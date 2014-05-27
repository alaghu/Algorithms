# Defining a class Algorithm.
class LargestInteger
  # This method returns the largest integer in an array
  # If no results are found 0 is returned.
  #
  # integers - The array that is provided as input
  #
  # Returns the the largest
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
