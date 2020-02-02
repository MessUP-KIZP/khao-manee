class ApplicationController < ActionController::Base
  protect_from_forgery

  def serialized_resource(resource)
    return {} if resource.nil?

    resource
  end


  def after_sign_out_path_for(resource)
    root_path
  end
end
