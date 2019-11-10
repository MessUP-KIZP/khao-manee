class OrganisationsUser < ApplicationRecord
  belongs_to :user
  belongs_to :organisation

  enum relation_type: [:organisation_worker, :volunteer]
end
