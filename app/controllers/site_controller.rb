class SiteController < ApplicationController
	def home
		@users=User.last_created_users(5)
		@projects=Project.last_created_projects(5)
	end
end
