class User < ActiveRecord::Base
	has_many :students
	has_many :instructors
	has_many :administrators
end