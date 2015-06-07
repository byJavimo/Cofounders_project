class User < ActiveRecord::Base
	has_and_belongs_to_many :projects
	has_secure_password



	def self.last_created_users(param)
		User.order(created_at: :desc).limit(param)
	end

	def skills_or_position_matching? project

		if project.project_skills==self.user_skills||project.project_position==self.user_position 

			return true

		else

			return false

		end

	end



end


