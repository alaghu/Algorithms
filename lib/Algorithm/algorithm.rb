# Defining a class Algorithm.
class Algorithm

  #defining a method to find the largest integer
  def find_largest_integer(*integers)

    puts "The length of integers is #{integers.length}"

    integers.each do |integer_iteration|

      puts "The integer = #{integers}"
      puts "The integer_iteration = #{integer_iteration}"

      #largest = integer_iteration
      puts integers.length
      puts largest


    end

    largest
  end
end

# Calling this as a simple test

array = [1, 4, 5, 6]

puts "This is the length of the array #{array.length}"

largest_number = Algorithm.new

largest_number.find_largest_integer(array)
