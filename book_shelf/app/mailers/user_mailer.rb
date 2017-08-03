class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = 'http://0.0.0.0:3000/confirm_account'
    mail(to: @user.email, subject: 'Welcome to book shelf')
  end

  def reset_password_email(user)
    @user = user
    @url = 'http://0.0.0.0:3000/reset_password'
    mail(to: @user.email, subject: 'Reset password of Bookshelf account')
  end
end
