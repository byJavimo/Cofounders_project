class User < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_secure_password



	def self.last_created_users(param)
		User.order(created_at: :desc).limit(param)
	end



end


