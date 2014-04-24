# To search using binary search
class BinarySearch
  def find_the_number(number_to_find, array_sorted)
    puts ""
    puts "-------------Number to Find #{number_to_find}"
    lo = 0
    hi = array_sorted.length - 1

    # check if mid array is the number_to_find
    while lo <= hi


      mid = lo + ((hi - lo) / 2)
      puts "lo = #{lo} , hi = #{hi} and mid = #{mid}"

      puts "inside while loop lo = #{lo} < hi = #{hi} and mid = #{mid}"

      if number_to_find < array_sorted[mid]
        hi = mid - 1

        puts "Number to find #{number_to_find} is less than array[#{mid}] = #{array_sorted[mid]}. hi = #{hi}"

      elsif number_to_find > array_sorted[mid]
        lo = mid + 1
        puts "Number to find #{number_to_find} is greater than array[#{mid}] = #{array_sorted[mid]}"


      else
        puts "I am returning mid #{mid} which is #{array_sorted[mid]}"
        return mid
      end



    end

    puts "I am returning - 1"
    return -1


  end
end


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

# Second half of the search array
# (mid+1..hi).each do |element|
#   puts "Entered second half."
#   if number_to_find == array_sorted[element]
#     puts "In second half, #{array_sorted[element]} at #{element}"
#     return element
#   end
# end