class UsersController < ApplicationController
	before_action :fetch_user, only: [:update]

	def index
		if current_user.present?
			redirect_to missionboard_path
 		else
 			@users = User.all
 			@user = User.new
		end
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path(user_id: @user.id)
		else
			render 'index'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		if @user.update_attributes(user_params)
	  		redirect_to users_path(@user)
		else
	  		render 'edit'
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :photo)
	end

	def fetch_user
    	@user = User.find(params[:id])
  	end
end