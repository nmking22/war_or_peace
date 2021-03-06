class Deck
  attr_reader :cards, :cut_cards

  def initialize(cards = [])
    @cards = cards
    @suit_array = [:club, :diamond, :heart, :spade]
    @rank_values = {
      2 => '2',
      3 => '3',
      4 => '4',
      5 => '5',
      6 => '6',
      7 => '7',
      8 => '8',
      9 => '9',
      10 => '10',
      11 => 'Jack',
      12 => 'Queen',
      13 => 'King',
      14 => 'Ace'
    }
    @cut_cards = []
  end

  def rank_of_card_at(index)
    cards[index].rank
  end

  def high_ranking_cards
    cards.select do |card|
      card.rank >= 11
    end
  end

  def percent_high_ranking
    ((high_ranking_cards.length.to_f / cards.length.to_f) * 100).round(2)
  end

  def remove_card
    cards.shift
  end

  def add_card(new_card)
    cards << new_card
  end

  def populate_standard_deck
    @suit_array.each do |suit|
      @rank_values.each do |rank, value|
        new_card = Card.new(suit, value, rank)
        add_card(new_card)
      end
    end
  end

  def shuffle_deck
    cards.shuffle!
  end

  def cut_deck
    @cut_cards = cards.each_slice(cards.length / 2).to_a
  end
end
