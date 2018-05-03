class CohortsController < ApplicationController
	
	layout 'layout'

	def index
		puts "i am in path /cohorts"
	end


	def  show
		puts "I am in /cohorts/id route"
	end

end
