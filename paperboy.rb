class Paperboy
  def initialize(name, experience, side, earnings)
    @name = name
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    (@experience/2) + 50
  end

  def deliver(start_address, end_address)
     num_house = end_address - start_address
     @experience += num_house
     pay = num_house.to_f * 0.25
     @earnings = @earnings + pay
     return pay
  end


end
