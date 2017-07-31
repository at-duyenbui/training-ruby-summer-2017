class ConfirmAccountController < ApplicationController
  before_action :set_user, only: %i[index reconfirm confirm_account]

  def index; end

  def reconfirm; end

  def update_token
    @user = User.find_by_email(params[:email])
    @user.skip_password_validation = true
    if @user.present?
      @user.update_attributes(confirm_token: rand(100000..999999), confirm_send_at: Time.now)
      UserMailer.welcome_email(@user).deliver_now
      flash[:success] = 'Please check your email'
      redirect_to login_path
    else
      flash[:error] = 'Email is incorrect'
      render :edit
    end
  end

  # confirm account
  def confirm_account
    if (Time.now - @user.confirm_send_at.to_time) / 1.hour < 72 && @user.confirm_token == params[:confirm_token]
      @user.update_attribute(:confirm_at, Time.now)
      flash[:success] = 'Welcome to the BookShelf! Your email has been confirmed.
      Please login to continue.'
      redirect_to login_path
    else
      flash[:error] = 'Sorry. This token is over time. Please confirm again to recieve new token'
      redirect_to reconfirm_account_path
    end
  end

  private

  def set_user
    @user = User.find_by_confirm_token(params[:confirm_token])
  end
end
