require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_card_attributes
    card1 = Card.new("6", "Spades")
    assert_equal "6", card1.value
    assert_equal "Spades", card1.suit
    card2 = Card.new("Jack", "Spades")
    assert_equal "11", card2.value
    assert_equal "Spades", card2.suit
    card3 = Card.new("Queen", "Spades")
    assert_equal "12", card3.value
    assert_equal "Spades", card3.suit
    card4 = Card.new("King", "Spades")
    assert_equal "13", card4.value
    assert_equal "Spades", card4.suit
    card5 = Card.new("Ace", "Spades")
    assert_equal "14", card5.value
    assert_equal "Spades", card5.suit
  end

end
