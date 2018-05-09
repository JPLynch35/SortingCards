require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_does_it_exist
    assert_instance_of Round, @round
  end

  def test_round_attributes
    assert_equal [], @round.guesses
    assert_instance_of Deck, @round.deck
  end

  def test_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_record_guess
    @round.record_guess("3 of Hearts")
    assert_instance_of Guess, @round.guesses[0]
  end

  def test_guess_count
    @round.record_guess("3 of Hearts")
    assert_equal 1, @round.guesses.length
  end

  def test_guess_first_feedback
    @round.record_guess("3 of Hearts")
    assert_output("Correct!\n") {@round.guesses.first.feedback}
  end

  def test_number_correct
    @round.record_guess("3 of Hearts")
    assert_equal 1, @round.number_correct
  end

  def test_current_card_after_record_guess
    @round.record_guess("3 of Hearts")
    assert_equal "4", @round.current_card.value
    assert_equal "Clubs", @round.current_card.suit
  end

  def test_guess_count_after_second_guess
    @round.record_guess("3 of Hearts")
    @round.record_guess("Jack of Diamonds")
    assert_equal 2, @round.guesses.length
  end

  def test_guess_second_feedback
    @round.record_guess("3 of Hearts")
    @round.record_guess("Jack of Diamonds")
    assert_output("Incorrect.\n") {@round.guesses.last.feedback}
  end

  def test_number_correct_after_second_guess
    @round.record_guess("3 of Hearts")
    @round.record_guess("Jack of Diamonds")
    assert_equal 1, @round.number_correct
  end

  def test_percent_correct
    @round.record_guess("3 of Hearts")
    @round.record_guess("Jack of Diamonds")
    assert_equal 50, @round.percent_correct
  end

end
