require_relative 'spec_helper'

describe 'Find a number using Binary Search' do

  it 'should return -1 when 0 not found on 1, 2, 3, 4 ' do

    search_result = BinarySearch.new

    position = search_result.find_the_number(0, [1, 2, 3, 4])

    expect(position).to eq(-1)

  end

  # it 'should return 4 3 2 1 when 1 2 3 4 are the input' do
  #
  #   search_result = BinarySearch.new
  #
  #   position = search_result.find_the_number(1, [1, 2, 3, 4])
  #
  #   expect(position).to eq(1)
  #
  # end
end