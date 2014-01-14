# Defining a class Algorithm.
class Algorithm
  # defining a method to find the largest integer
  def find_largest_integer(integers)
    largest = 0
    puts "The length of integers is #{integers.length}"

    integers.each do |integer_iteration|

      if integer_iteration.is_a? Integer
        if integer_iteration > largest
          largest = integer_iteration
        end

        puts "Integer Iteration #{integer_iteration}"
        puts "largest #{largest}"

      else
        puts "Integer iteration #{integer_iteration} is not an integer"

      end

    end

    largest
  end
end

# Calling this as a simple test

array = [1.1, 4, 5, 6, 4, 6, 7, 9, 4, 4.1]

puts "This is the length of the array #{array.length}"

largest_number = Algorithm.new

largest_number.find_largest_integer(array)
