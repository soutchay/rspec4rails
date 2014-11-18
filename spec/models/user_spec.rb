require "rails_helper"
require 'shoulda/matchers'
describe User do
	it "has an email" do
		# factory girl to build a user
		user = FactoryGirl.build_stubbed(:a_user)
		expect(user.email).to_not be_nil
	end
	it "has a password" do
		user = FactoryGirl.build_stubbed(:a_user)
		expect(user.password).to_not be_nil
	end
	it {should validate_presence_of(:email)}
	it {should validate_presence_of(:password)}
end