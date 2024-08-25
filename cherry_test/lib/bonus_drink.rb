class BonusDrink

  def self.total_count_for(amount)
    not_returned = amount
    bottles = 0

    while not_returned >= 3
      bottles += not_returned.div(3) * 3
      not_returned = not_returned.div(3) + (not_returned % 3)
    end

    p bottles + not_returned
  end

end