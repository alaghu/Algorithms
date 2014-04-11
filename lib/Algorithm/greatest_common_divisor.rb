# class for finding the greatest common divisor
class GreatestCommonDivisor
  def find_the_greatest_commom_divisor(a, b)
    if the_value_an_integer?(a)
      if the_value_an_integer?(b)

        remainder = a % b

        if remainder == 0
          puts "The greatest common divisor or #{a} is #{b}"
        else
          a = b
          b = remainder
        end

      end
    end

    def the_value_an_integer?(input)
      puts "Sorry #{input} is not an integer." until input.is_a? Fixnum

      input
    end
  end

  # Obtain two inputs a and b
  # Check if they are integeres, else error out
  # Divide a by b.
  # Get Remainder
  # Remainder , r would be between 0 <= r <= b
  # if r == 0 then end
  # else set a == b, b == r , repeat
end
