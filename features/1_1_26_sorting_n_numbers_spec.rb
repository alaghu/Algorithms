require_relative 'spec_helper'

describe 'Sorting n numbers' do

  it 'should return 4 3 2 1 when 1 2 3 4 are the input' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([1, 2, 3, 4])

    expect(output).to eq([4, 3, 2, 1])

  end

  it 'should return 4 3 2 1 at first element when 3 2 1 4 are the input' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([3, 2, 1, 4])

    expect(output).to eq([4, 3, 2, 1])

  end

  it 'should return 10 9 8 7 6 5 4 3 2 1 when input 1 2 3 4 5 6 7 8 9 10' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

    expect(output).to eq([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])

  end

  it 'should return 10 9 8 7 6 5 4 3 2 1 when input 1 9 8 7 6 5 4 3 2 10' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([1, 9, 8, 7, 6, 5, 4, 3, 2, 10])

    expect(output).to eq([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])

  end

end

# Deprecation of should method for array
# output.should be [1, 2, 3]
# http://stackoverflow.com/questions/21102549/
# why-is-the-where-query-in-rails-returning-a-different-object


