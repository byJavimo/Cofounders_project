class UserMailer < ApplicationMailer
	default from: 'javi_maec@hotmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to Cofounders')
  end
  def order_send(user, project)
    @user = user
    @project = project
    mail(to: "#{@user.email}", subject: "Your subject")
  end
end
