require_relative 'spec_helper'

describe 'Find a number using Binary Search' do
  # sample arrays defined for searching within them
  arrayof_four = [1, 2, 3, 4]
  arrayof_ten = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  it 'should return -1 when 0 not found on 1, 2, 3, 4 ' do
    search_result = BinarySearch.new

    position = search_result.find_the_number(0, arrayof_four)

    expect(position).to eq(-1)
  end

  it 'should return 2 when 3 found in 1 2 3 4' do
    search_result = BinarySearch.new

    position = search_result.find_the_number(3, arrayof_four)

    expect(position).to eq(2)
  end

  it 'should return 1 when 2 found in 1, 2, 3, 4 ' do
    search_result = BinarySearch.new

    position = search_result.find_the_number(2, arrayof_four)

    expect(position).to eq(1)
  end

  it 'should return 3 when 4 found in 1, 2, 3, 4 ' do
    search_result = BinarySearch.new

    position = search_result.find_the_number(4, arrayof_four)

    expect(position).to eq(3)
  end

  it 'should return 9 when 10 found in 1, 2, 3, 4 ..10  ' do
    search_result = BinarySearch.new

    position = search_result.find_the_number(10, arrayof_ten)

    expect(position).to eq(9)
  end

  it 'should return 3 when 4 found in 1, 2, 3, 4 ..10  ' do
    search_result = BinarySearch.new

    position = search_result.find_the_number(4, arrayof_ten)

    expect(position).to eq(3)
  end

  # This section is to display the results of a performance
  # There are three files used to test the bench mark, one small and two large.
  # For sake of conciseness the TinyT file has been ignored.
  # Each of these files are opened fed into an array and sorted.
  # In the last section we compare the times to search through each of these
  # arrays using the native ruby find method 'any?' vs the BinarySearch's
  # find_the_number.

  # TODO: refactor the three files repetitiveness
  require 'benchmark'

  # First File - processing 'tinyW.txt'
  array_tiny = []

  File.open('Files/WhiteListFiles/tinyW.txt') do |file|
    file.each_line do |line|
      array_tiny << line.to_i
    end
  end

  array_tiny.sort!

  # Second File - processing 'largeW.txt'
  array_large_w = []

  File.open('Files/WhiteListFiles/largeW.txt') do |file|
    file.each_line do |line|
      array_large_w << line.to_i
    end
  end

  array_large_w.sort!

  # Second File - processing 'largeT.txt'
  array_large_t = []

  File.open('Files/WhiteListFiles/largeT.txt') do |file|
    file.each_line do |line|
      array_large_t << line.to_i
    end
  end

  array_large_t.sort!

  # Comparing the results of native Ruby Find 'any?' vs BinarySearch's
  # find_the_number
  search_using_binary = BinarySearch.new
  number_to_search_for = 84

  Benchmark.bm do |x|
    x.report('Array.Any? tiny          ') do
      array_tiny.any? do |n|
        n == number_to_search_for
      end
    end

    x.report('BinarySearch.find-tiny   ') do
      search_using_binary.find_the_number(number_to_search_for, array_tiny)
    end

    x.report('Array.Any? large_W       ') do
      array_large_w.any? do |n|
        n == number_to_search_for
      end
    end

    x.report('BinarySearch.find-large_W') do
      search_using_binary.find_the_number(number_to_search_for, array_large_w)
    end

    x.report('Array.Any? large_T       ') do
      array_large_t.any? do |n|
        n == number_to_search_for
      end
    end

    x.report('BinarySearch.find-large_T') do
      search_using_binary.find_the_number(number_to_search_for, array_large_t)
    end
  end
end
