class Api::V1::TagsController < ApplicationController
  def index
    render json: serialized_resource(current_user.tags)
  end

  def all
    render json: serialized_resource(Tag.all)
  end
end
