# To search using binary search
class BinarySearch
  # This method returns the position (index) of the number to be found in a sorted array.
  # If no results are found -1 is returned.
  #
  # number_to_find - The number being searched in an array.
  # array_sorted - an array that is sorted.
  #                have not tested for non integers and non sorted
  #
  # Returns the found key or -1 if not found
  def find_the_number(number_to_find, array_sorted)
    lo = 0
    hi = array_sorted.length - 1

    while lo <= hi

      mid = lo + ((hi - lo) / 2)

      if number_to_find < array_sorted[mid]
        hi = mid - 1

      elsif number_to_find > array_sorted[mid]
        lo = mid + 1

      else
        return mid
      end

    end

    -1
  end
end
