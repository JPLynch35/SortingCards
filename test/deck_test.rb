require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'

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

  #Test required by spec
  def test_sorting_the_deck
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_2, card_1, card_3], deck.sorting_the_deck
  end

  #Test to ensure small collection didn't just happen to sort correctly
  def test_sorting_the_deck_large
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("1","Hearts")
    card_5 = Card.new("Jack", "Clubs")
    card_6 = Card.new("Ace", "Diamonds")
    card_7 = Card.new("7", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6, card_7])
    assert_equal [card_4, card_2, card_1, card_3, card_7, card_5, card_6], deck.sorting_the_deck
  end

  #Test required by spec
  def test_merge_sort
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_2, card_1, card_3], deck.merge_sort
  end

  #Test to ensure small collection didn't just happen to sort correctly
  def test_merge_sort_large
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("1","Hearts")
    card_5 = Card.new("Jack", "Clubs")
    card_6 = Card.new("Ace", "Diamonds")
    card_7 = Card.new("7", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6, card_7])
    assert_equal [card_4, card_2, card_1, card_3, card_7, card_5, card_6], deck.merge_sort
  end

end
