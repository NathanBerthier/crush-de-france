class UserMailer < ApplicationMailer
  default from: 'notifications@crushdefrance.fr'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
