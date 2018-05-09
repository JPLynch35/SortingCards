require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_does_it_exist
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_card_attributes
    card = Card.new("Ace", "Spades")
    assert_equal "14", card.value
    assert_equal "Spades", card.suit
  end

end
