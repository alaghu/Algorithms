require_relative 'spec_helper'

describe 'Find a number using Binary Search' do

  it 'should return -1 when 0 not found on 1, 2, 3, 4 ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(0, [1, 2, 3, 4])

    expect(position).to eq(-1)

  end

  it 'should return 2 when 3 found in 1 2 3 4' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(3, [1, 2, 3, 4, 5])

    expect(position).to eq(2)

  end

  it 'should return 1 when 2 found in 1, 2, 3, 4 ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(2, [1, 2, 3, 4])

    expect(position).to eq(1)

  end

  it 'should return 3 when 4 found in 1, 2, 3, 4 ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(4, [1, 2, 3, 4])

    expect(position).to eq(3)

  end

  it 'should return 9 when 10 found in 1, 2, 3, 4 ..10  ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(10, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

    expect(position).to eq(9)

  end

  it 'should return 3 when 4 found in 1, 2, 3, 4 ..10  ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(4, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

    expect(position).to eq(3)

  end

  require 'benchmark'

  array_tiny = []

  File.open("Files/WhiteListFiles/tinyW.txt") do |file|
    file.each_line do |line|
      # puts line.to_i
      array_tiny << line.to_i
    end

  end

  array_tiny.sort!

  array_large_W = []

  File.open("Files/WhiteListFiles/largeW.txt") do |file|
    file.each_line do |line|

      array_large_W << line.to_i
    end

  end

  array_large_W.sort!

  array_large_T = []

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

end