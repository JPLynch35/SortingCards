class Guess
  attr_reader :card, :response

  def initialize(response, card)
    @response = response
    @card = card
  end

  def value
    @response.split[0]
  end

  def suit
    @response.split[2]
  end

  def correct?
    value == @card.value && suit == @card.suit
  end

  def feedback
    if correct?
      puts "Correct!"
    else
      puts "Incorrect."
    end
  end

end
