class UsersController < ApplicationController
	before_action :require_user, only: [:show, :edit]
	def index
		@users = User.all
	end
	def show
		@user = User.find params[:id]
		@projects = Project.all 
			@projects_found = false
			@projects.each do |project|
			 	if @user.skills_or_position_matching? project
							@projects_found = true 
					end 
				end
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new user_params
		if @user.save
			flash[:notice] = "Welcome to Cofounders. You have been succesfully registred"
			session[:user_id] = @user.id
			redirect_to user_path(@user.id)
		else
			flash[:alert] = "Sorry, an error happened!!Please, revise you have completed all the mandatory fields. If the problem continues, you can contact us at 918268896"
			redirect_to '/signup'
		end
	end
	def edit
		@user = User.find params[:id]
	end
	def update
		@user = User.find params[:id]
		if @user.update project_params
			redirect_to user_path(@user.id)
		else
			redirect_to edit_user_path(@user.id)
		end
	end
	private
	def user_params
		params.require(:user).permit(:user_image, :user_name, :user_last_name, :user_email, :password, :user_education, :user_position, :user_skills, :user_cofounder, :user_employee)
	end
end

