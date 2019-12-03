class Api::V1::TagsController < ApplicationController
  def index
    render json: {
      data: current_user.tags
    }
  end

  def all
    render json: {
      data: Tag.all
    }
  end
end
