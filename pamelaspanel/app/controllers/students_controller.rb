class StudentsController < ApplicationController

	# layout 'layout'

	def index
		puts "i am in path /students"
	end


	def  show
		puts "I am in /students/id route"
	end
end
