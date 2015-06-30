class SkillsController < ApplicationController
	def new_user_skill
		@user=User.find params[:user_id]
		@skill=@user.skills.new
	end
	def create_user_skill
		@user=User.find params[:user_id]
		@skill=@user.skills.new(skill_params)
		if @skill.save
			redirect_to new_user_skill_path(@user.id)
		else 
			redirect_to new_user_skill_path(@user.id)
		end	
	end
	def new_project_skill
		@project=Project.find params[:project_id]
		@skill=@project.skills.new
	end
	def create_project_skill
		@project=Project.find params[:project_id]
		@skill=@project.skills.new(skill_params)
		if @skill.save
			redirect_to new_project_skill_path(@project.id)
		else 
			redirect_to new_project_skill_path(@project.id)
		end
	end
	private
	def skill_params
		params.require(:skill).permit(:name, :user_id, :project_id)
	end
end
