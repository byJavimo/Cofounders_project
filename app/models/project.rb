class Project < ActiveRecord::Base
	has_and_belongs_to_many :users

	def self.last_created_projects(param)
		Project.order(created_at: :desc).limit(param)
	end
end


