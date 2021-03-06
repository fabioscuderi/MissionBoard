class MissionboardController < ApplicationController

  def enter
		session[:current_user_id] = params[:user_id]
		redirect_to missionboard_path
	end

  def show
  	@user = current_user
  	@users = User.all
  	@roles = Role.all
    @todos = Todo.all
    @moods = Mood.all
    @categories = Category.all
  end

  def exit
  	session[:current_user_id] = nil
  	redirect_to root_path
	end

  private
    # Use callbacks to share common setup or constraints between actions.
end