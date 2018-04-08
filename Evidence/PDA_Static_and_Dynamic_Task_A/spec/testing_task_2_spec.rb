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
  assert_equal(false, @card.values_at)
end

def test_highest_card
  assert_equal(10, @card1.value)
end
#
def test_cards_total
  assert_equal(17, @card.values_at)
end

end

# def test_customer_can_afford_pet__insufficient_funds
#   customer = @customers[1]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(false, can_buy_pet)
# end
#
# def customer_can_afford_pet(customer, pet)
#   return customer[:cash] >= pet[:price]
# end
