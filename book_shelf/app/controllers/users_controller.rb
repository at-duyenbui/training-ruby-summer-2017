class UsersController < ApplicationController
  layout 'main'

  before_action :set_user, only: %i[show edit update destroy]
  before_action :total_page, only: [:index]

  # get /users
  def index
    @page = params[:page].to_i
    if @page.present? == false || @page < 1
      redirect_to users_path(page: 1)
    else
      if @page > @total_page
        @page = @total_page
        redirect_to users_path(page: @page)
      end
      @users = User.where.not(confirm_at: '').limit(ENV['LIMIT'].to_i).offset((@page - 1) * ENV['LIMIT'].to_i)
    end
  end

  # get users/new
  def new
    @user = User.new
  end

  # post /users
  def create
    @user = User.new(new_user_param)
    @user.uid = @user.email
    @user.provider = 'email'
    @user.confirm_token = rand(100000..999999)
    @user.confirm_send_at = Time.now
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      flash[:success] = 'Please confirm your email address to continues'
      redirect_to root_path
    else
      flash[:error] = 'Sorry, something went wrong!'
      render 'new'
    end
  end

  # get users/:id/edit
  def edit; end

  # get users/:id
  def show; end

  # put users/:id
  def update
    avatar = params[:avatar]
    params[:user][:avatar] = @user.avatar if avatar.present? == false
    @user.update(user_param)
    redirect_to @user
  end

  # delete users/:id
  def destroy
    @user.destroy
    redirect_to action: 'index'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_param
    params.require(:user).permit(:name, :password, :email, :user_name, :gender, :birthday, :role, :provider, :uid)
  end

  def new_user_param
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation, :uid, :provider, :confirm_token, :confirm_send_at)
  end

  def total_page
    @total = User.all.count
    @total_page = (@total % ENV['LIMIT'].to_i).zero? ? @total / ENV['LIMIT'].to_i : @total / ENV['LIMIT'].to_i + 1
  end

  # def confirm_token
  #   self.confirm_token = rand(100000..999999) if self.confirm_token.blank?
  # end
end
