require 'pry'
class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

def sorting_the_deck
    ordered_cards = [@cards.shift]
    @cards.each do |card|
      ordered_cards.each_with_index do |ordered_card, ordered_card_index|
        if card.value < ordered_card.value
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

  def merge_sort(array)
    return array if array.length == 1
    middle = (array.length / 2.0).ceil
    merge(merge_sort(array[0...middle]), merge_sort(array[middle..-1]))
  end

  def merge(left_array, right_array)
    ordered_cards = []
    until left_array.length == 0 || right_array.length == 0 do
      if left_array.first.value <= right_array.first.value
        ordered_cards << left_array.shift
      else
        ordered_cards << right_array.shift
      end
    end
    ordered_cards + left_array + right_array
  end


  # def merge_sort(array)
  #   return array if array.length == 1
  #   array_1 = array.each_slice((array.length/2.0).ceil).to_a
  #   array_2 = array.each_slice((array.length/2.0).floor).to_a
  #   ordered_array = []
  #   i1 = 0
  #   i2 = 0
  #   while ordered_array.length < (array_1.length + array_2.length)
  #     if i1 == array_1.length
  #       ordered_array << array_2[i2..-1].flatten!
  #     elsif i2 == array_2.length
  #       ordered_array << array_1[i1..-1].flatten!
  #     elsif array_1[i1].value <= array_2[i2].value
  #       ordered_array << array_1[i1]
  #       i1 += 1
  #     else
  #       ordered_array << array_2[i2]
  #       i2 += 1
  #     end
  #   end
  #   ordered_array
  # end

  # def merge_sort
    # number_of_pairs = (@cards.length / 2.0).ceil
    # number_of_pairs.times do |n|
    #   Arrayn = []
    #   n <<
    # number_of_pairs.times do
    #   @cards.
    #
    # end
    # total_array
  # end

end
