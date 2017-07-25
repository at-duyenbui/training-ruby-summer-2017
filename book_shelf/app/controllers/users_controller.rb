class UsersController < ApplicationController
  layout 'main'

  before_action :total_page, only: [:index]

  PAGE_NUM = 10

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
      @users = User.all.limit(PAGE_NUM).offset((@page - 1) * PAGE_NUM)
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
    if @user.save
      UserMailer.welcome_email(@user).deliver_now
      # log_in @user
      # flash[:success] = "Welcome!"
      redirect_to login_path
    else
      render 'new'
    end
  end

  # get users/:id/edit
  def edit
    @user = User.find(params[:id])
    # byebug
  end

  # get users/:id
  def show
    @user = User.find(params[:id])
  end

  # put users/:id
  def update
    # byebug
    @user = User.find(params[:id])
    avatar = params[:avatar]
    params[:user][:avatar] = @user.avatar if avatar.present? == false
    @user.update(user_param)
    redirect_to @user
  end

  # delete users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to action: 'index'
  end

  private

  def user_param
    params.require(:user).permit(:name, :password, :email, :user_name, :gender, :birthday, :role, :provider, :uid)
  end

  def new_user_param
    params.require(:user).permit(:user_name, :email, :password, :uid, :provider)
  end

  def total_page
    @total = User.all.count
    @total_page = (@total % PAGE_NUM).zero? ? @total / PAGE_NUM : @total / PAGE_NUM + 1
  end
end
