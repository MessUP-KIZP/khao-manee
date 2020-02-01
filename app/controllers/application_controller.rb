class ApplicationController < ActionController::Base
  protect_from_forgery

  def serialized_resource(resource)
    return {} if resource.nil?

    resource
  end
end
