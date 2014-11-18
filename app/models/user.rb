class User < ActiveRecord::Base
	# validates_presence_of :email, :password
	validates :password, length: { in: 6..20}
	validates :email, length: {maximum: 255}
	validates_uniqueness_of :email
	validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
end