class Api::V1::UsersController < ApplicationController
  def show
    render json: serialized_resource(current_user)
  end
end
