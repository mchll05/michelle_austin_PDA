class Card

    attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def check_for_ace(card)
  ace = 1
  if card.value == ace
      return true
    else
      return false
    end
  end

  def highest_card(card1, card2)
    if card1.value > card2.value
      return card1.value
    else
      card2.value
    end
  end

  def cards_total(cards)
    total = 0
  for card in cards
    total += card[:value]
  end
    return total
  end

end
