class User < ActiveRecord::Base
	has_many :measure
	validates :name, :mail, :password, presence: true
	validates :mail, uniqueness: true
	validates :mail, confirmation: true
	#validates :mail, :email_format 
	#validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
