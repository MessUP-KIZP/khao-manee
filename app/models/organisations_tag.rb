class OrganisationsTag < ApplicationRecord
  belongs_to :organisation
  belongs_to :tag
end
