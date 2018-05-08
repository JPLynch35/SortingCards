require './lib/guess'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    card_swap = @deck.cards.first
    @deck.cards.shift
    @deck.cards << card_swap
  end

  def number_correct
    number_correct = 0
    @guesses.map do |guess|
      if guess.correct? == true
        number_correct += 1
      end
    end
    number_correct
  end

  def percent_correct
    number_correct = 0
    @guesses.map do |guess|
      if guess.correct? == true
        number_correct += 1
      end
    end
    (number_correct * 100) / @guesses.count
  end

end
