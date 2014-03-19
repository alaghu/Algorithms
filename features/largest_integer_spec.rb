require_relative 'spec_helper'

def before_each(array)
  largest = LargestInteger.new
  output = largest.find_largest_integer array
end

describe 'Largest Integer' do


  it 'should return zero when input is zero' do
    array = [0]

    output = before_each(array)
    output.should be 0

  end

  it 'should return zero when input is negative numbers' do
    array = [-1, -2]

    output = before_each(array)
    output.should be 0

  end

  it 'should find return two when input is one and two' do
    array = [1, 2]

    output = before_each(array)
    output.should be 2

  end

  it 'should find 19 when the input has two nineteens' do
    array = [1.1, 4, 5, 6, 4, 6, 7, 19, 4, 19, 4.1]

    output = before_each(array)
    output.should == 19

  end

end
