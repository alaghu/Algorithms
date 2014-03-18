require 'spec_helper'


class RspecGreeter
  def greet
    "Hello Rspec!"
  end

end


describe 'Rspec Greeter' do

  it "should say 'Hello Rspec!' when it recieves the greet() message  " do

    greeter = RspecGreeter.new
    greeting = greeter.greet
    greeting.should == "Hello Rspec!"

  end
end