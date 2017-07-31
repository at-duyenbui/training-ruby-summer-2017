class ResetPasswordController < ApplicationController
  def index; end

  def check_reset_token
    @user = User.find_by_reset_password_token(params[:reset_pass_token])
    @user.skip_password_validation = true
    if @user.present?
      @user.update_attribute(:password, params[:password])
      @user.save
      flash[:success] = 'Your password has been reseted.
      Please login to continue.'
      redirect_to login_path
    else
      flash[:error] = 'Sorry. Something went wrong. Please recheck your reset token'
      render :index
    end
  end

  def require_reset_password; end

  def send_reset_pass
    @user = User.find_by(email: params[:user][:email])
    @user.skip_password_validation = true
    if @user.present?
      @user.update_attributes(reset_password_token: rand(100000..999999), reset_password_send_at: Time.now)
      UserMailer.reset_password_email(@user).deliver_now
      flash[:success] = 'Please check your email'
    else
      flash[:error] = 'Email is incorrect'
    end
    redirect_to login_path
  end

  private

  def new_password_param
    params.require(:user).permit(:password, :password_confirmation)
  end
end
