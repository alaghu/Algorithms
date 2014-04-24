# To search using binary search
class BinarySearch
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

    return -1


  end
end

