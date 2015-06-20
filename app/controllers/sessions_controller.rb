class SessionsController < ApplicationController

	before_action :require_user, only: [:show]

	def new
	end
	def create
 	 @user = User.find_by_email(params[:session][:email])
 		 if @user && @user.authenticate(params[:session][:password])
   			 session[:user_id] = @user.id
   			 redirect_to user_path(@user.id)
 		 else
	 		flash[:alert]
 			redirect_to login_path
 	 	end 
	end
	def destroy
    session[:user_id] = nil
    redirect_to '/'
  	end
end
