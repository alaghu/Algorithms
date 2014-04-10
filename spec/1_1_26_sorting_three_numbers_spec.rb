require_relative 'spec_helper'

describe 'Sorting three numbers' do

  it 'should return the same when the input is all the same numbers' do

    sorted = SortThree.new

    output = sorted.sort_the_numbers(1, 1, 1)

    expect(output).to eq([1, 1, 1])

  end

  it 'should return zeros when the input is zeros' do

    sorted = SortThree.new

    output = sorted.sort_the_numbers(0, 0, 0)

    expect(output).to eq([0, 0, 0])

  end




  it 'should return 1 2 3 when 3 2 1 are the input' do

    sorted = SortThree.new

    output = sorted.sort_the_numbers(3, 2, 1)

    expect(output).to eq([1, 2, 3])

  end
end

# Deprecation of should method for array
# output.should be [1, 2, 3]
# http://stackoverflow.com/questions/21102549/why-is-the-where-query-in-rails-returning-a-different-object
