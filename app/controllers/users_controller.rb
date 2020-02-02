class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: current_user
  end

  def edit
    render :edit, user: @current_user
  end

  def update
    current_user.update(user_params)

    redirect_to edit_user_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number)
  end
end
