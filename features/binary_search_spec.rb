require 'rspec'

context 'My context' do

  specify 'Find the number in an array of one' do
    # array = 1
    # find 1
    # return 1 and 0 (position of the find)
    true.should == false
  end

  specify 'Find the number in an array of two' do
    # array = 1 , 2
    # find 2
    # return 2 and 1 (position of the find)


    true.should == false
  end


  specify 'Find the number in an array of three' do
    # array = 3, 2, 1
    # ensure array is sorted
    # find 2
    # return 2 and 1 (position of the find)



    true.should == false
  end


  specify 'Find the number in an array of three with no find' do
    # array = 3, 2, 1
    # ensure array is sorted
    # find 4
    # return -1 and 1 (position of the find)



    true.should == false
  end




end