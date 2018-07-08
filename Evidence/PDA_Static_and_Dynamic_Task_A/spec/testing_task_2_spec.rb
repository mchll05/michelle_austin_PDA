require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_2.rb')

class CardTest < MiniTest::Test

def setup
  @card1 = Card.new("clubs", 10)
  @card2 = Card.new("spades", 7)

  @card = [@card1, @card2]
end

def test_check_for_ace
  assert_equal(false, Card.check_for_ace(@card1))
end

def test_highest_card
  assert_equal(10, Card.highest_card(@card1, @card2))
end
#
def test_cards_total
  assert_equal(17, Card.cards_total(@card))
end

end
