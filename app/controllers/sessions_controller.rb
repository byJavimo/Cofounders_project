class SessionsController < ApplicationController

	before_action :require_user, only: [:show]

	def new
	end
	def create
 	 @user = User.find_by_user_email(params[:session][:user_email])
 		 if @user && @user.authenticate(params[:session][:password])
   			 session[:user_id] = @user.id
   			 redirect_to user_path(@user.id)
 		 else
	 		flash[:alert] = "Sorry, you cannot access to your personal profile. Please, revise your password or email. If the proble continues, you can contact us at 918268896"
 			redirect_to login_path
 	 	end 
	end
	def destroy
    session[:user_id] = nil
    redirect_to '/'
  	end
end
