class SessionsController < ApplicationController

	def show
		@user = User.find params[:id]
		@projects = Project.all
	end

	def new
	end
	def create
 	 @user = User.find_by_user_email(params[:session][:user_email])
 		 if @user && @user.authenticate(params[:session][:password])
   			 session[:user_id] = @user.id
   			 redirect_to '/'
 		 else
	 		flash[:alert] = "Sorry, you cannot access to your personal profile. Please, revise your password or email. If the proble continues, you can contact us at 918268896"
 			redirect_to 'login'
 	 	end 
	end
	def destroy
    session[:user_id] = nil
    redirect_to '/'
  	end
end
