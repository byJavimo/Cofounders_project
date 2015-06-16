class User < ActiveRecord::Base
	has_and_belongs_to_many :projects, :class_name => 'Project'
	has_many :projects_created, :class_name => 'Project'
	has_secure_password

	def self.last_created_users(param)
		User.order(created_at: :desc).limit(param)
	end

	def skills_matching? project

		project_skills_array=[]
		project_skills_array << project.project_skills.split(",")
		user_skills_array =[]
		user_skills_array << self.user_skills.split(",")
		project_skills_array.each do |project_skill|
			user_skills_array.each do |user_skill|
				if project_skill==user_skill
					return true
				else
					return false
				end
			end
		end
	end

	def position_matching? project
		if project.project_position == self.user_position
			return true
		else
			return false
		end
	end

end


