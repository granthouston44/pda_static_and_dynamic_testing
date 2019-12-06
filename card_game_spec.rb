require('minitest/autorun')
require('minitest/reporters')
require_relative('./card_game')
require_relative('./card')


MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

def test_can_create_card_game_object
  Card.new('hearts', 3)
end

def test_check_for_ace
  cardtest = Card.new('spades', 1)
  result = CardGame.checkforace(cardtest)
  assert_equal(true, result)
end

def test_check_for_ace__false
  cardtest = Card.new('spades', 3)
  result = CardGame.checkforace(cardtest)
  assert_equal(false, result)
end

def test_highest_card()
  card1 = Card.new('spades', 3)
  card2 = Card.new('spades', 8)
  result = CardGame.highest_card(card1,card2)
  assert_equal(card2, result)
end

def test_highest_card__card1_wins
  card1 = Card.new('spades', 8)
  card2 = Card.new('spades', 3)
  result = CardGame.highest_card(card1,card2)
  assert_equal(card1, result)
end

def test_cardgame_total
  card1 = Card.new('spades', 8)
  card2 = Card.new('spades', 3)
  card3 = Card.new('hearts', 3)
  card4 = Card.new('king', 5)
  cards = [card1, card2, card3, card4]
    result = CardGame.cards_total(cards)
    assert_equal("You have a total of 19", result)

end

end
