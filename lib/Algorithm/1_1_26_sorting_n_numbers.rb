# To sort n numbers using the creative ex 1.1.26 logic.
# But, generalizing it for n.
class SortN
  def sort_the_numbers(array)
    array.each_index do |index|

      if index < array.length - 1
        if array[0] > array[index + 1]

          array[0], array[index + 1] =
              swap_values(array[0], array[index + 1])

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
