# To sort four numbers creative ex 1.1.26  Need to make it generic using same logic

class SortFour
  def sort_the_numbers(a, b, c, d)
    temp = 0

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

    if a > d
      temp = a
      a = d
      d = temp
    end

    if b > c
      temp = b
      b = c
      c = temp
    end






    [a, b, c, d]
  end
end
