class Card

  attr_reader :value, :suit

  def initialize(value, suit)
    if value.to_i <= 10
      @value = value
    elsif value == "Jack"
      @value = 11
    elsif value == "Queen"
      @value = 12
    elsif value == "King"
      @value = 13
    elsif value == "Ace"
      @value = 14
    end
    @suit = suit
  end

end
