class InstructorsController < ApplicationController

	layout 'layout'

	def index
		puts "i am in path /instructors"
	end


	def  show
		puts "I am in /instructors/id route"
	end
end
