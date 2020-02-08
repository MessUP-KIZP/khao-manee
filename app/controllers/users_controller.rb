class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_permission, only: [:edit, :update]

  def show
  end

  def edit
    render :edit, user: @current_user
  end

  def update
    current_user.update(user_params)

    redirect_to edit_user_path
  end

  private

  def check_permission
    redirect_to(root_path) unless current_user.id == params[:id]
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number)
  end
end
