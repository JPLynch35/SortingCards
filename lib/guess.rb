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
    @response.split[0] == @card.value && @response.split[2] == @card.suit
  end

  def feedback
    if @response.split[0] == @card.value && @response.split[2] == @card.suit
      puts "Correct!"
    else
      puts "Incorrect."
    end
  end

end
