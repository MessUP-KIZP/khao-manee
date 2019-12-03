module Api
  module V1
    class ApplicationController < ActionController::Base
      protect_from_forgery
      before_action :authenticate_user!

      def serialized_resource(resource)
        return {} if resource.nil?

        resource
      end
    end
  end
end
