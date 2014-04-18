require_relative 'spec_helper'

describe 'Sorting four numbers' do

  it 'should return the same when the input is all the same numbers' do

    sorted = SortFour.new

    output = sorted.sort_the_numbers(1, 1, 1, 1)

    expect(output).to eq([1, 1, 1, 1])

  end

  it 'should return zeros when the input is zeros' do

    sorted = SortFour.new

    output = sorted.sort_the_numbers(0, 0, 0, 0)

    expect(output).to eq([0, 0, 0, 0])

  end

  it 'should return 1 2 3 4 when  4 3 2 1 are the input' do

    sorted = SortFour.new

    output = sorted.sort_the_numbers(4, 3, 2, 1)

    expect(output).to eq([1, 2, 3, 4])

  end

  it 'should return 1 2 3 4 when  3 4 2 1 are the input' do

    sorted = SortFour.new

    output = sorted.sort_the_numbers(3, 4, 2, 1)

    expect(output).to eq([1, 2, 3, 4])

  end

  it 'should return 1 2 3 4 when 4 2 1 3 are the input' do

    sorted = SortFour.new

    output = sorted.sort_the_numbers(4, 2, 1, 3)

    expect(output).to eq([1, 2, 3, 4])

  end

  it 'should return 1 2 3 4 when 1 4 3 2 are the input' do

    sorted = SortFour.new

    output = sorted.sort_the_numbers(1, 4, 3, 2)

    expect(output).to eq([1, 2, 3, 4])

  end

end

# Deprecation of should method for array
# output.should be [1, 2, 3]
# http://stackoverflow.com/questions/21102549/
# why-is-the-where-query-in-rails-returning-a-different-object
