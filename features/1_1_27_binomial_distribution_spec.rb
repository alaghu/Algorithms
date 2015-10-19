require_relative 'spec_helper'

describe 'Binomial Distribution' do
  it 'should return 1 when n and k are 0' do
    bino = Distribution.new

    output = bino.binomial(0, 0, 1)

    expect(output).to eq(1.0)
  end

  it 'should return 0 when n is less than 0 ' do
    bino = Distribution.new

    output = bino.binomial(-1, 1, 1)

    expect(output).to eq(0)
  end

  # create test cases for simple input with increment of 1 for each variable
  # such as n, k , p

  # Refer to
  #  n   k  p  output
  #  1   1  1    1
  #  2   2  2

  it 'should return 1 when n, k , p = 1 ' do
    bino = Distribution.new

    output = bino.binomial(1, 1, 1)

    expect(output).to eq(1)
  end
  # it 'should return 1 when n, k , p = 1 ' do
  #   bino = Distribution.new
  #
  #   output = bino.binomial(10 , 51, 0.25)
  #
  #   puts output
  #
  #   expect(output).to eq(1)
  # end
end
