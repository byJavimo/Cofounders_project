class UsersController < ApplicationController
	before_action :require_user, only: [:show,:edit]
	def index
		@users = User.all
	end
	def show
		@user = User.find params[:id]
		@projects = Project.all 
		@projects_found = false
		@user_projects = []
		@projects.each do |project|
	 	if @user.skills_matching(project).any? || @user.position_matching?(project)
 			@projects_found = true 
 			@user_projects << project
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
		@user.skills << Skill.new( name: params[:skill] )
		if @user.update user_params

			redirect_to user_path(@user.id)
		else
			redirect_to edit_user_path(@user.id)
		end
	end
	def destroy
		project = User.find params[:id]
		user.destroy 
		redirect_to root_path
	end
	private
	def user_params
		params.require(:user).permit(:user_image, :user_name, :user_last_name, :user_email, :password, :user_education, :user_position, :user_cofounder, :user_employee)
	end
end
