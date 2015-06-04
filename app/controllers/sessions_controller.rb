class SessionsController < ApplicationController
	def new
	end
	def create
 	 @user = User.find_by_email(params[:session][:email])
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