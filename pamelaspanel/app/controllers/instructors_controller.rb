class InstructorsController < ApplicationController

	
	layout 'layout'
	
	def index
		@instructor = User.find(role: "Instructor")
	end


	def  show
		@instructor = Instructor.find(params[:id])
		@user_instructor = User.find_by(params[:role])
	end

	def new
		@instructor = User.new
		
	end

	def create
		@instructor = Instructor.create(cohort_params)
		redirect_to '/cohorts'
	end


    def edit 
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end


    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/cohorts'
    end






	private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def cohort_params
      params.require(:cohort).permit(:name, :start, :end , :course_id)
    end
end
