class UsersController < ApplicationController
  def show
    redirect_to new_user_session_path if !current_user
    @current_user = current_user
  end
end
