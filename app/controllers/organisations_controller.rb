class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.all

    render :index
  end

  private

    def organisation_params
      params.require(:organisation).permit()
    end

end
