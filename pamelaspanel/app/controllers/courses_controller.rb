class CoursesController < ApplicationController
	layout 'layout'
	
	def index
		puts "i am in path /courses"
	end


	def  show
		puts "I am in /courses/id route"
	end
end
