#rails helper takes care of a lot of things that help us write tests
#in the rails environment, make sure to include it
require "rails_helper"

#use describe and pass the object name of HomeController followed
#by us explicitly saying that this is a test of a HomeController
describe HomeController, :type => :controller do

	#syntax of tests, same as Behavior Driven Development syntax for Jasmine
	it "should get page for index" do
		#simulate GET request
		get :index
		#expect is example of how we assert something is true, in this case we expect the response from the get to 
		#be a success
		expect(response).to be_success
		expect(response).to have_http_status(200)
	end
end