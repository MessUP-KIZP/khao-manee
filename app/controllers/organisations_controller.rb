class OrganisationsController < ApplicationController

  def index
    render json: Organisation.approved.all
  end

  private

    def organisation_params
      params.require(:organisation).permit()
    end

end
