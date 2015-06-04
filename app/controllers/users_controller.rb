class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@user = User.find params[:id] 
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new user_params
		if @user.save
			flash[:notice] = "Welcome to Cofounders. You have been succesfully registred"
			session[:user_id] = @user.id
			redirect_to users_path
		else
			flash[:alert] = "Sorry, an error happened!!Please, revise you have completed all the mandatory fields. If the problem continues, you can contact us at 918268896"
			redirect_to '/signup'
		end
	end
	private
	def user_params
		params.require(:user).permit(:user_image, :user_name, :user_last_name, :user_email, :password_digest, :user_education, :user_position, :user_skills, :user_cofounder, :user_employee)
	end
end

