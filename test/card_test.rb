require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def setup
    @card = Card.new("Ace", "Spades")
  end

  def test_does_it_exist
    assert_instance_of Card, @card
  end

  def test_card_attributes
    assert_equal "Ace", @card.value
    assert_equal "Spades", @card.suit
  end




end
