x = 0
y = 0
direction = ['N','E','W','S']
def_loc = (x = 0, y = 0, direction[0])
# plateau_size = ( 5, 5)

class Rover
    attr_accessor :x, :y, :direction #:instruction

    def initialize(x,y,direction)
      @x = x
      @y = y
      @direction = direction
      # @plateau_size = plateau_size
    end

    def read_instruction(instruction)
     instruction.each do |i|
       if i == "L" || i == "R"
       turn i
       else
       i == "M"
       move i
       end
     end

    end

    def move
      if direction[0]
       @y = y + 1
      elsif direction[1]
       @x = x + 1
      elsif direction[2]
       @x = x - 1
      elsif direction[3]
       @y = y - 1
      else
       puts "Please enter correct instruction"
      end
    end

    def turn(turn)
        if direction[0] && turn == "L"
           direction[2]
        elsif direction[0] && turn == "R"
           direction[1]
        elsif direction[1] && turn == "L"
           direction[0]
        elsif direction[1] && turn == "R"
           direction[3]
        elsif direction[2] && turn == "L"
           direction[3]
        elsif direction[2] && turn == "R"
           direction[0]
        elsif direction[3] && turn == "L"
           direction[1]
        elsif direction[3] && turn == "R"
           direction[2]
        else
          puts "Please put correct direction"
        end
    end
#  puts "#{@x}, #{@y},#{@direction}"

rover1 = Rover.new(:x,:y,:direction[0])
rover2 = Rover.new(:x,:y,:direction[1])



end
#
#
# Question to identify the plateau size.
puts "What is the plateau size?"
plateau_size = gets.chomp
#Question to identify where the Rover1 located now.
puts "Where the Rover1 located currently?"
rover1_initial_location = gets.chomp
#Enter the direction for Rover1.
puts "Input the instruction (direction) for Rover1:"
instruction = gets.chomp
#Question to identify where the Rover2 located now.
puts "Where the Rover2 located currently?"
rover2_initial_location = gets.chomp
#Enter the direction for Rover2.
puts "Input the instruction (direction) for Rover2:"
instruction = gets.chomp
