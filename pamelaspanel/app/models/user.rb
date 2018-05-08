class User < ActiveRecord::Base
	has_many :students
	has_many :instructors
	has_many :administrators

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end