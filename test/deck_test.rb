require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'

require 'pry'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @card_3 = Card.new("5", "Diamonds")
    @deck = Deck.new([@card_1, @card_2, @card_3])
  end

  def test_does_it_exist
    assert_instance_of Deck, @deck
  end

  def test_cards
    assert_equal [@card_1, @card_2, @card_3], @deck.cards
  end

  def test_count
    assert_equal 3, @deck.count
  end

  def test_merge_sort
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_2, card_1, card_3], deck.merge_sort
  end

end
