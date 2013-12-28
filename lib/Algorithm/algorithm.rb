# Defining a class Algorithm.
class Algorithm
  def find_largest_integer(*integers)
    largest = 0

    integers.each do |integer_iteration|

      largest = integer_iteration if integer_iteration > largest

    end

    largest
  end
end
