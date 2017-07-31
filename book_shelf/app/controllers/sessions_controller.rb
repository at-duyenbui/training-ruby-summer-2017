class SessionsController < ApplicationController
  layout false

  def new; end

  def create
    @user = User.find_by(user_name: params[:session][:user_name])
    if @user && @user.authenticate(params[:session][:password])
      if !@user.confirm_at.blank?
        log_in @user
        redirect_to users_url
      else
        flash[:danger] = 'Please activate your account by following
         the instructions in the account confirmation email you received to proceed'
        render :new
      end
    else
      flash[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
