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

  it 'should return 3 when 4 found in 1, 2, 3, 4 ..10  ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(4, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

    expect(position).to eq(3)

  end



end