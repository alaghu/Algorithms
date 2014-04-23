# To search using binary search
class BinarySearch
  def find_the_number(number_to_find, array_sorted)

    lo = 0
    hi = array_sorted.length - 1
    mid = (hi - lo) / 2

    # First half of the search array
    (lo..mid).each do |element|
      if number_to_find == array_sorted[element]
        puts "found #{number_to_find} at #{element}"
        return element
      end
    end


    # Second half of the search array
    (mid+1..hi).each do |element|
      if number_to_find == array_sorted[element]
        puts "Found #{array_sorted[element]} at #{element}"
        return element
      end
    end


    return -1


  end
end