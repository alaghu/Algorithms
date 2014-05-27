# To sort n numbers using the creative ex 1.1.26 logic.
# Not exactly that logic.
# But, generalizing it for n.
# I think this is bubble sort
class SortN
  # This method takes an array as input and returns a sorted one.
  def sort_the_numbers(array)
    array.each_index do |outer|

      array.each_index do |inner|
        if inner < (array.length) - 1

          if array[inner] < array[inner + 1]

            array[inner], array[inner + 1] =
                swap_values(array[inner], array[inner + 1])

          end

        end

      end

    end
    array
  end

  # This method returns the two values passes but interchanged.
  def swap_values(value1, value2)
    temp = value1
    value1 = value2
    value2 = temp
    [value1, value2]
  end
end
