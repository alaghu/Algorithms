# To sort three numbers creative ex 1.1.26
class SortThree
  def sort_the_numbers(a, b, c)
    if a > b
      temp = a
      a = b
      b = temp
    end

    if a > c
      temp = a
      a = c
      c = temp
    end

    if b > c
      temp = b
      b = c
      c = temp
    end

    [a, b, c]
  end
end

#
# def swap_values(value1, value2)
#   temp = value1
#   value1 = value2
#   value2 = temp
#
#   [value1, value2]
#
# end
