class UsersController < ApplicationController

	layout 'layout'

	def index
		# puts "i am in path /users"
		@user =User.all
	end


	def  show
		@user = User.find(params[:id])
		# puts "I am in /users/id route"
	end
end
