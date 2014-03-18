# Defining a class Algorithm.
class LargestInteger
  # defining a method to find the largest integer
  def find_largest_integer(integers)
    largest = 0

    integers.each do |integer_iteration|

      if integer_iteration.is_a? Integer
        largest = integer_iteration if integer_iteration > largest

      end

    end

    largest
  end
end
