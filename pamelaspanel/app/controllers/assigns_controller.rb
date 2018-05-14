class AssignsController < ApplicationController


	# def show
	# 	@user = User.find(params[:id])
	# 	@student = User.where(role: 'Student')
	# 	@instructor =User.where(role: 'Instructor')

	# end

	
	def new
		@user = User.find(params[:id])
		@student_role = User.where(role: 'Student')
		@instructor_role =User.where(role: 'Instructor')
		@instructor = Instructor.new	
		@student = Student.new

        puts @user.role 
        puts @student_role 	
	end

	def create
		@instructor = Instructor.create(instructor_params)
		@student = Student.create(student_params)
		redirect_to '/users'
	end


    def edit 
    	@user = User.find(params[:id])
        @student = Student.find_by(user_id: params[:id])
        @instructor = Instructor.find_by(user_id: params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        @student = Student.find(params[:id])
        @student.update(instructor_params)
        redirect_to '/users'
    end


    def destroy
        Student.find(params[:id]).destroy
        Instructor.find(params[:id]).destroy
        redirect_to '/users'
    end


	private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def student_params
        params.require(:student).permit(:user_id, :cohort_id, :grade)
    end

    def instructor_params
        params.require(:instructor).permit(:user_id, :cohort_id)
    end
end
