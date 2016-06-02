class Cat
  attr :name, :preffered_food, :meal_type
  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end

  def name
    @name
  end

  def preffered_food
    @preffered_food
  end

  def meal_time
    @meal_time
  end

  def eats_at
    @meal_time
     if @meal_time > 12
      "#{@meal_time - 12}PM"
     else
      "#{@meal_time}AM"
    end
  end

  
end
