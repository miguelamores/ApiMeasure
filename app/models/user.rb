class User < ActiveRecord::Base
	validates :name, :mail, :password, presence: true
	validates :mail, uniqueness: true
	validates :mail, confirmation: true
end
