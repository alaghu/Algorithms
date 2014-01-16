# Defining a class Algorithm.
class Algorithm
  # defining a method to find the largest integer
  def find_largest_integer(integers)
    largest = initialize_and_length__of_array(integers)

    integers.each do |integer_iteration|

      if integer_iteration.is_a? Integer
        largest = integer_iteration if integer_iteration > largest

        print_iteration_largest(integer_iteration, largest)

      else
        input_not_integer(integer_iteration)

      end

    end

    largest
  end

  def initialize_and_length__of_array(integers)
    largest = 0
    puts "The length of integers is #{integers.length}"
    largest
  end

  def input_not_integer(integer_iteration)
    puts "Integer iteration #{integer_iteration} is not an integer"
  end

  def print_iteration_largest(integer_iteration, largest)
    puts "Integer Iteration #{integer_iteration}"
    puts "largest #{largest}"
  end
end

# Calling this as a simple test

array = [1.1, 4, 5, 6, 4, 6, 7, 9, 4, 4.1]

puts "This is the length of the array #{array.length}"

largest_number = Algorithm.new

largest_number.find_largest_integer(array)
