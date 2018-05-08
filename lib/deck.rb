class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def merge_sort
    ordered_cards = []
    ordered_cards << @cards.first
    @cards.shift
    @cards.each do |card|
      n = 0
      if card.value < ordered_cards.first.value
        ordered_cards.unshift(card)
      else
        until card.value > ordered_cards[n].value
          n += 1
        end
        ordered_cards.insert(n, card)
      end
    end
  end

end
