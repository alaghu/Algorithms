require_relative '../lib/Algorithm/1_1_28_binary_search'

require 'benchmark'


array_tiny =[]

File.open("Files/WhiteListFiles/tinyW.txt") do |file|

  file.each_line do |line|
    # puts line.to_i
    array_tiny << line.to_i
  end

end

array_tiny.sort!


array_large_W =[]

File.open("Files/WhiteListFiles/largeW.txt") do |file|

  file.each_line do |line|

    array_large_W << line.to_i
  end

end

array_large_W.sort!


array_large_T =[]

File.open("Files/WhiteListFiles/largeT.txt") do |file|

  file.each_line do |line|

    array_large_T << line.to_i
  end

end

array_large_T.sort!


# puts "This is the array_tiny #{array_tiny}"

lets_search = BinarySearch.new

Benchmark.bm do |x|
  x.report("Array.Any? tiny          ") { array_tiny.any? { |n| n == 84 } }
  x.report("BinarySearch.find-tiny   ") { lets_search.find_the_number(84, array_tiny) }
  x.report("Array.Any? large_W       ") { array_large_W.any? { |n| n == 84 } }
  x.report("BinarySearch.find-large_W") { lets_search.find_the_number(84, array_large_W) }
  x.report("Array.Any? large_T       ") { array_large_T.any? { |n| n == 84 } }
  x.report("BinarySearch.find-large_T") { lets_search.find_the_number(84, array_large_T) }
end


# puts lets_search.find_the_number(98, array_tiny)

