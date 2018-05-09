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
        if card.value.to_i < ordered_card.value.to_i
          ordered_cards.insert(ordered_card_index, card)
          break
        elsif ordered_card_index == ordered_cards.length - 1
          ordered_cards.push(card)
          break
        end
      end
    end
    ordered_cards
  end

  def merge_sort(array = @cards)
    return array if array.length == 1
    middle = (array.length / 2.0).ceil
    merge(merge_sort(array[0...middle]), merge_sort(array[middle..-1]))
  end

  def merge(left_array, right_array)
    ordered_cards = []
    until left_array.length == 0 || right_array.length == 0 do
      if left_array.first.value.to_i <= right_array.first.value.to_i
        ordered_cards << left_array.shift
      else
        ordered_cards << right_array.shift
      end
    end
    ordered_cards + left_array + right_array
  end

end
