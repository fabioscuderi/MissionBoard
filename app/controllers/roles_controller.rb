class RolesController < ApplicationController
  before_action :fetch_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      redirect_to roles_path
    else
      render 'new'
    end
  end

  def show
  end

  def new
    @users = User.all
    @role = Role.new
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    if @role.update_attributes(role_params)
      redirect_to missionboard_path
    else
      render 'edit'
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_path
  end

  private
  def role_params
    params.require(:role).permit(:name, :user_id)
  end

  def fetch_role
    @role = Role.find(params[:id])
  end
end