class UsersController < ApplicationController

	layout 'main'

	# get /users
	def index
		@users = User.all
	end

	# get users/new
	def new
		@user = User.new
	end

	#post /users
	def create
		@user = User.new(user_param)
		if @user.save
			redirect_to @user, notice: "Add a new user successful"
		else 
			render 'new' 
		end
	end

	#get users/:id/edit
	def edit
		@user = User.find(params[:id])
		# byebug
	end

	#get users/:id
	def show
		@user = User.find(params[:id])
	end

	#put users/:id
	def update
		# byebug
		@user = User.find(params[:id])
		@user.update(user_param)
		redirect_to @user
	end

	#delete users/:id
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to action: 'index'
	end

	private
		def user_param
			params.require(:user).permit(:name, :password, :email, :user_name, :gender, :birthday, :role, :avatar, :provider, :uid)
		end

end
