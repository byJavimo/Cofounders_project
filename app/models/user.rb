class User < ActiveRecord::Base
	has_and_belongs_to_many :projects, :class_name => 'Project'
	has_many :projects_created, :class_name => 'Project'
	has_many :skills
	has_secure_password
	validates :user_email, uniqueness: true 
	validates :user_name, presence: true 
	validates :user_name, length: {maximum: 30}

	def self.last_created_users(param)
		User.order(created_at: :desc).limit(param)
	end
	def skills_matching project
		result = []
		project.skills.split(",").each do |project_skill|
			self.skills.split(",").each do |user_skill|
				project_skill.each do |p_skill|
				user_skill.each do |u_skill|
				if p_skill.name.downcase == u_skill.name.downcase
						result << project
					end
				end
			end
		end						
	end
	result
	end
	def position_matching? project
		if project.project_position.downcase == self.user_position.downcase
			return true
		else
			return false
		end
	end
end

