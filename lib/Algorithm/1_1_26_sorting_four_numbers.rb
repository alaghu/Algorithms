# To sort three numbers creative ex 1.1.26
class SortFour
  def sort_the_numbers(a, b, c, d)
    # sort one by one upto three
    a, b = swap_values(a, b) if a > b

    a, c = swap_values(a, c) if a > c

    a, d = swap_values(a, d) if a > d

    b, c = swap_values(b, c) if b > c

    c, b = swap_values(c, b) if c > b

    b, d = swap_values(b, d) if b > d

    c, d = swap_values(c, d) if c > d

    b, c = swap_values(b, c) if b > c

    [a, b, c, d]
  end

  def swap_values(value1, value2)
    temp = value1
    value1 = value2
    value2 = temp
    [value1, value2]
  end
end
