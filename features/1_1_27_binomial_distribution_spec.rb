require_relative 'spec_helper'

describe 'Binomial Distribution' do

  it 'should return 1 when n and k are 0' do

    bino = Distribution.new

    output = bino.binomial(0,0,1)

    expect(output).to eq(1.0)

  end
  
  it 'should return 0 when n is less than 0 ' do

  bino = Distribution.new
  
  output = bino.binomial(-1, 1, 1)
  
  expect(output).to eq(0)
  
  end

end

# Deprecation of should method for array
# output.should be [1, 2, 3]
# http://stackoverflow.com/questions/21102549/
# why-is-the-where-query-in-rails-returning-a-different-object
