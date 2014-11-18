require "rails_helper"
require 'shoulda/matchers'
describe User do
	# it "has an email" do
	# 	# factory girl to build a user
	# 	user = FactoryGirl.create(:a_user)
	# 	expect(user.email).to_not be_nil
	# end
	# it "has a password" do
	# 	user = FactoryGirl.create(:a_user)
	# 	expect(user.password).to_not be_nil
	# end
	# it {should validate_presence_of(:email)}
	# it {should validate_presence_of(:password)}

	it { should validate_uniqueness_of(:email) }
	# validates string 'a@a.com' is accepted as email
	it do 
		should allow_value('a@a.com').
					for(:email)
	end
	it do
		should !allow_value('bobbobobobob').
					for(:email)
	end
	# test both min and max validation attributes are present
	it { should ensure_length_of(:password).is_at_least(6) }
	it { should ensure_length_of(:password).is_at_most(20) }
	it { should ensure_length_of(:email).is_at_most(255)}








end