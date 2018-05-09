class Card

  attr_reader :value, :suit

  def initialize(value, suit)
    if value == "Jack"
      @value = "11"
    elsif value == "Queen"
      @value = "12"
    elsif value == "King"
      @value = "13"
    elsif value == "Ace"
      @value = "14"
    else
      @value = value
    end
    @suit = suit
  end

end
