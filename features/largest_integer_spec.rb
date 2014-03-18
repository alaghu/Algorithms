require_relative 'spec_helper'

describe 'Largest Integer' do

  it 'should find the largest integer' do
    list_of_numbers = [1.1, 4, 5, 6, 4, 6, 7, 9, 4, 4.1]
    largest = LargestInteger.new
    output = largest.find_largest_integer list_of_numbers

    output.should == 9

  end

  it 'should find the largest integer' do
    array = [1.1, 4, 5, 6, 4, 6, 7, 19, 4, 19 , 4.1]
    largest = LargestInteger.new
    output = largest.find_largest_integer array

    output.should == 19

  end


  it 'should return zero' do
    # only zero is passed
  end

  it 'should return zero' do
    # when negative numbers are passed
  end


  it 'should return zero' do
    # when decimals are passed
  end


end
