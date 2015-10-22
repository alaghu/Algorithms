# To sort n numbers using the creative ex 1.1.26 logic.
#
# Not exactly that logic.
# But, generalizing it for n.
# I think this is bubble sort
class SortN
  # This method takes an array as input and returns a sorted one.
  def sort_the_numbers(array)
    # Iterating through every element. However, not passing any input to block.
    array.each do
      # Going goes through 1 to n
      array.each_index do |index|
        # Skip this value if index > (array.length) - 1
        next unless index < (array.length) - 1

        next_val = index + 1

        assign_values(array, index, next_val) if array[index] < array[next_val]
      end
    end
    array
  end

  # assigns the values to the two array values
  def assign_values(array, index, next_val)
    array[index], array[next_val] = swap_values(array[index], array[next_val])
  end

  # This method returns the two values as an array but swapped.
  def swap_values(argument_1, argument_2)
    [argument_2, argument_1]
  end
end
