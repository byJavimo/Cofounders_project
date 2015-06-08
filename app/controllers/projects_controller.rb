class ProjectsController < ApplicationController
	before_action :require_user, only: [:show,:new,:edit]

	def index
		@projects = Project.all
	end
	def show
		@project = Project.find params[:id] 
	end
	def new
		@project = Project.new		
	end
	def create
		@project = Project.new project_params
		if @project.save
			flash[:notice] = "Your project has been succesfully launched"
			redirect_to root_path 
		else
			flash[:alert] = "Sorry, an error happened while uploading your project. Please, revise you have completed all the mandatory fields. If the proble continues, you can contact us at 918268896"
			redirect_to new_project_path
		end
	end
	def destroy
		project = Project.find params[:id]
		project.destroy 
		redirect_to projects_path
	end
	private
	def project_params
		params.require(:project).permit(:project_name, :project_position, :project_skills, :project_cofounder, :project_employee)
	end

end
