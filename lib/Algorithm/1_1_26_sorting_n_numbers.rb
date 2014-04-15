# To sort n numbers using the creative ex 1.1.26 logic.
# But, generalizing it for n.
# I think this is bubble sort

class SortN
  def sort_the_numbers(array)

    # outer loop goes from A[0] to
    array.each_index do |outer|


      # inner loop goes from A[0] to
      array.each_index do |inner|

        puts "In outer loop #{outer} , and inner loop #{inner}"

        if inner < array.length - 1
          if array[outer] > array[inner + 1]

            array[outer], array[inner + 1] =
                swap_values(array[outer], array[inner + 1])

          end


        end
      end
    end

    puts array
    array
  end

  def swap_values(value1, value2)
    temp = value1
    value1 = value2
    value2 = temp
    [value1, value2]
  end
end
