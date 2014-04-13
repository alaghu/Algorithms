# To sort three numbers creative ex 1.1.26
class SortThree
  def sort_the_numbers(a, b, c)
    # sort one by one upto three
    a, b = swap_values(a, b) if a > b

    a, c = swap_values(a, c) if a > c

    b, c = swap_values(b, c) if b > c

    [a, b, c]        hello
  end

  def swap_values(value1, value2)
    temp = value1
    value1 = value2
    value2 = temp
    [value1, value2]
  end
end
