# To search using binary search
class BinarySearch
  def find_the_number(number_to_find, array_sorted)

    lo = 0
    hi = array_sorted.length - 1

    # check if mid array is the number_to_find

    while lo <= hi

      mid = lo + ((hi - lo) / 2)

      if number_to_find < array_sorted[mid]
        hi = mid - 1

        # First half of the search array
        #
        # (lo..mid).each do |element|
        #   puts "Entered first half."
        #   if number_to_find == array_sorted[element]
        #     puts "In first half, found #{number_to_find} at #{element}"
        #     return element
        #   end
        #
        # end

      elsif number_to_find > array_sorted[mid]
        lo = mid + 1
        # Second half of the search array
        # (mid+1..hi).each do |element|
        #   puts "Entered second half."
        #   if number_to_find == array_sorted[element]
        #     puts "In second half, #{array_sorted[element]} at #{element}"
        #     return element
        #   end
        # end

      end
      return mid

    end


    return -1


  end
end