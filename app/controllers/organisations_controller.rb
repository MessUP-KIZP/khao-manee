class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.all

    render :index
  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  private

    def organisation_params
      params.require(:organisation).permit()
    end

end
