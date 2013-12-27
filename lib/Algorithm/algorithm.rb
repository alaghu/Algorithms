class Algorithm
  def find_larget_integer (*integers)
    largest = integers[0]
    for iteration = 1 to integers[integers.length]
      if integers[iteration] > largest
      then
        largest = integers[iteration]

      end
    end

    largest
  end
end