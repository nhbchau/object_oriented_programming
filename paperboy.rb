
class Paperboy
  def initialize(name, experience, side, earnings)
    @name = name
    @experience = 0
    @side = side
    @earnings = 0
  end

  def quota
    (@experience/2) + 50
  end

  def deliver(start_address, end_address)
     num_house = (end_address - start_address)/2
     @experience += num_house
  if @experience > quota
     (@experience - 50 )
     #pay = num_house.to_f * 0.25
     @earnings = @earnings + num_house * 0.25#pay

     return pay
  end

  def report

    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end


end

#=> "I'm Tom, I've delivered 1300 papers and I've earned $700.0 so far!"
