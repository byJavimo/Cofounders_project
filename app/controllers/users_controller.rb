class UsersController < ApplicationController
	before_action :require_user, only: [:show,:edit]
	def send_user_mail
		@user = User.find params[:id]
		@project = Project.find params[:user_id]

		UserMailer.user_send(@user, @project).deliver
  		flash[:notice] = "Order has been sent"
  		redirect_to user_path(@user.id)
	end
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
	    respond_to do |format|
	      if @user.save
	        UserMailer.welcome_email(@user).deliver_later
	        format.html { redirect_to(@user, notice: 'User was successfully created.') }
	      else
	        format.html { reditect_to signup_path}
	      end
	  end
  	end
	def edit
		@user = User.find params[:id]
	end
	def update
		@user = User.find params[:id]
		if @user.update user_params
			redirect_to new_user_skill_path(@user.id)
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
		params.require(:user).permit(:background_image, :image, :name, :last_name, :email, :password, :education, :position, :cofounder, :employee)
	end
end
