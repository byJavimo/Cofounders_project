class ProjectsController < ApplicationController
	before_action :require_user, only: [:show,:new,:edit]

	def index
		@projects = Project.all
	end
	def user_projects
		@user = User.find params[:user_id]
	end
	def show
		@project = Project.find params[:id] 
	end
	def new
		@user = User.find params[:user_id]
		@project = @user.projects_created.new		
	end
	def create
		@user = User.find params[:user_id]
		@project = @user.projects_created.new(project_params)
		@project.skills << Skill.new( name: params[:skill] )	
		if @project.save
			flash[:notice] = "Your project has been succesfully launched" 
			redirect_to user_path(@user.id)
		else
			flash[:alert] = "Sorry, an error happened while uploading your project. Please, revise you have completed all the mandatory fields. If the proble continues, you can contact us at 918268896"
			redirect_to new_project_path
		end
	end
	def edit
		@project = Project.find params[:id]
	end
	def update
		@project = Project.find params[:id]
		if @project.update project_params
			flash[:notice] = "Project updated successfully"
			redirect_to @project
		else
			flash.now[:errors] = @project.errors.full_messages
			render 'edit' #si quiero usar un flash con redirect_to hago un flash[:notice/:alert].Si quiero usarlo con reder hago un flah.now[:notice/:alert]
		end
	end
	def destroy
		project = Project.find params[:id]
		project.destroy 
		redirect_to root_path
	end
	private
	def project_params
		params.require(:project).permit(:name, :image, :position, :cofounder, :employee, :user_id)
	end

end





