require_relative '../lib/Algorithm/1_1_28_binary_search'

array =[]

File.open("Files/WhiteListFiles/tinyW.txt") do |file|

  file.each_line do |line|
    puts line.to_i
    array << line.to_i
  end

end

array.sort!

puts "This is the array #{array}"

lets_search = BinarySearch.new

puts lets_search.find_the_number(98, array)

