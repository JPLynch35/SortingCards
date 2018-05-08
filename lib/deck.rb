class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

def sorting_the_deck
    ordered_cards = [@cards.shift]
    @cards.each do |card|
      ordered_cards.each_with_index do |ordered_card, ordered_card_index|
        if card.value < ordered_card.value
          ordered_cards.insert(ordered_card_index, card)
          break
        elsif ordered_card_index == ordered_cards.count - 1
          ordered_cards.push(card)
          break
        end
      end
    end
    ordered_cards
  end

end
