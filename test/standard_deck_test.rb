require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/standard_deck'

class StandardDeckTest < Minitest::Test
  def setup
    @standard_deck = StandardDeck.new
  end

  def test_it_exists

    assert_instance_of StandardDeck, @standard_deck
  end

  def test_it_has_readable_attributes

    assert_equal [], @standard_deck.cards
  end

  def test_it_can_populate_deck
    @standard_deck.populate_deck

    assert_equal [], @standard_deck.cards
  end

  def test_it_can_shuffle

  end
end
