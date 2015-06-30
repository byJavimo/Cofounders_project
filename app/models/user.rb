class User < ActiveRecord::Base
	has_and_belongs_to_many :projects, :class_name => 'Project'
	has_many :projects_created, :class_name => 'Project'
	has_many :skills
	has_secure_password
	mount_uploader :image, ImageUploader
	mount_uploader :background_image, ImageUploader
	validates :email, uniqueness: true 
	validates :name, presence: true 
	validates :name, length: {maximum: 30}

	def self.last_created_users(param)
		User.order(created_at: :desc).limit(param)
	end
	def skills_matching project	
		result = []
		project.skills.each do |project_skill|
			self.skills.each do |user_skill|
				if project_skill.name.to_s.downcase == user_skill.name.to_s.downcase
					result << project
				end
			end
		end
		result
	end
	def position_matching? project
		if project.position.to_s.downcase == self.position.to_s.downcase
			return true
		else
			return false
		end
	end
end

