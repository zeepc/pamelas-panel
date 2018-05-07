class EmployeesController < ApplicationController
	# layout 'layout'
	
	def index
		puts "i am in path /employees"
	end


	def  show
		puts "I am in /employees/id route"
	end
end
