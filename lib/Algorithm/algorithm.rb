class Algorithm


  def find_largest_integer (*integers)

    largest = 0

    integers.each do |integer_iteration|

      if integer_iteration > largest
      then
        largest = integer_iteration
      end

    end

    return largest

  end


end