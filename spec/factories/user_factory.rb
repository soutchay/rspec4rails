#factory girl expects each class inherits from ActiveRecord
FactoryGirl.define do
	factory :a_user, class: User do
		#setup attributes, declaration is a method call
		email ""
		password ""
	end
end