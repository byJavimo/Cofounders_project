class User < ActiveRecord::Base
	has_and_belongs_to_many :projects
	has_secure_password



	def self.last_created_users(param)
		User.order(created_at: :desc).limit(param)
	end

	def skills_and_position_matching_projectView? user

		if(user.user_skills==self.project_skills||user.user_position==self.project_position) 

			return true

		else

			return false

		end

	end

	def skills_and_position_matching_userView? project

		if(project.projects_skills==self.user_skills||project.project_position==self.user_position) 

			return true

		else

			return false

		end

	end



end


