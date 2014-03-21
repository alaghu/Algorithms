require_relative 'spec_helper'

def before_each(array)
  largest = LargestInteger.new
  largest.find_largest_integer array
end

describe 'Largest Integer' do

  it 'should return zero when input is zero or negative' do
    array = [0, -1, -2]

    output = before_each(array)
    output.should be 0

  end

  it 'should find return zero when input is nil or other characters' do
    array = [nil, 'a', 'z', '!']

    output = before_each(array)
    output.should be 0

  end

  it 'should find 19 when the input has two nineteens' do
    array = [1.1, 4, 5, 6, 4, 6, 7, 19, 4, 19, 4.1]

    output = before_each(array)
    output.should be 19

  end

end
