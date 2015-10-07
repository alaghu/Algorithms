This is as of 07-Oct-2015.
--------------------------

How to run the tests?
-------------
To run the tests the following could be used. This is for the testing in command
line only. This is not for the online tools such as Travis or Coveralls.

~/workspace (master) $ rake 

This should run rspec.

OR

~/workspace (master) $ rspec features/

passing the folder features, which contains the tests, to rspec.

Where can you see the result file?
-------------
In both cases, the result file of SimpleCov can be seen in coverage/index.html

What changed since broken?
-------------
Apparently, the ruby version in the Gem file was 2.0, however, the version in 
c9 is 2.1.1. So, had to update the Gem for this version and bundle update.