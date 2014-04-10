require_relative 'spec_helper'

describe 'Open Sample Files' do

  it 'should open the file and check for first and last numbers' do

    file = File.open("../Files/WhiteListFiles/tinyT.txt")

    file.each do |numbers|
      puts numbers

    end

    #file [0] should be 23
    #file [last] should be 68


  end
end