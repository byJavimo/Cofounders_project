class SiteController < ApplicationController
	def home
		@users=User.last_created_users(6)
		@projects=Project.last_created_projects(6)
	end
end
