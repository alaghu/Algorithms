# To sort n numbers using the creative ex 1.1.26 logic.
#
# Not exactly that logic.
# But, generalizing it for n.
# I think this is bubble sort
class SortN
  # This method takes an array as input and returns a sorted one.
  def sort_the_numbers(array)
    # Goes through all the values 1 to n ,
    array.each_index do |outer|
      # to print outer
      p "outer_index = #{outer}"

      # Once again goes through 1 to n
      array.each_index do |inner|
        # to print inner
        p "inner_index = #{inner}"

        # sample iteration
        # i1 - 1 < n - 1
        if inner < (array.length) - 1

          # i1 - if 1's value < 2's value
          if array[inner] < array[inner + 1]

            # i1 - swap
            # Swappinh the values
            array[inner], array[inner + 1] = swap_values(array[inner], array[inner + 1])
          end
        end
      end
    end
    p "End of Outer ----"
    array
  end

  # This method returns the two values as an array but swapped.
  def swap_values(argument_1, argument_2)
    [argument_2, argument_1]
  end
end
