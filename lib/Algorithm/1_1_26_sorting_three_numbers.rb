# To sort three numbers creative ex 1.1.26
# http://techbus.safaribooksonline.com/book/software-engineering-and-development/algorithms/9780132762571/1dot1-basic-programming-model/h4_78?uicode=oracle
# This is superseded by sort_n_numbers
class SortThree
  # This method takes three values and returns and array that is sorted.
  def sort_the_numbers(a, b, c)
    # sort one by one upto three
    a, b = swap_values(a, b) if a > b

    a, c = swap_values(a, c) if a > c

    b, c = swap_values(b, c) if b > c

    [a, b, c]
  end

  # This method returns the two values passes but interchanged.
  def swap_values(value1, value2)
    temp = value1
    value1 = value2
    value2 = temp
    [value1, value2]
  end
end
