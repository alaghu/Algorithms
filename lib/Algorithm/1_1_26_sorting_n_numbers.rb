# To sort n numbers using the creative ex 1.1.26 logic.
# Not exactly that logic.
# But, generalizing it for n.
# I think this is bubble sort
class SortN
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

  def swap_values(value1, value2)
    temp = value1
    value1 = value2
    value2 = temp
    [value1, value2]
  end
end
