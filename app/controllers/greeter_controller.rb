class GreeterController < ApplicationController
  def hello
    random_names = ["Alex", "Joe", "Michael"]
    @name = random_names.sample
    @time = Time.now
    #this won't work because instance variables are reset each view
    @times_displayed ||= 0
    @times_displayed += 1
  end
  def goodbye
  end
end
