require_relative 'spec_helper'

describe 'Sorting n numbers' do

  it 'should return 1 at first element when  4 3 2 1 are the input' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([4, 3, 2, 1])

    expect(output[0]).to eq(1)

  end

  it 'should return 1 at first element when  3 2 1 4 are the input' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([3, 2, 1, 4])

    expect(output[0]).to eq(1)

  end

  it 'should return 1 at first element when  10 9 8 7 6 5 4 3 2 1 are the input' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([10, 9 , 8, 7, 6, 5, 4, 3, 2, 1])

    expect(output[0]).to eq(1)

  end


  it 'should return 2 at second element when  10 9 8 7 6 5 4 3 2 1 are the input' do

    sorted = SortN.new

    output = sorted.sort_the_numbers([10, 9 , 8, 7, 6, 5, 4, 3, 2, 1])

    expect(output[1]).to eq(2)

  end



end

# Deprecation of should method for array
# output.should be [1, 2, 3]
# http://stackoverflow.com/questions/21102549/
# why-is-the-where-query-in-rails-returning-a-different-object
