class Organisation < ApplicationRecord
  has_many :tags, through: :organisations_tags
  has_many :users, through: :organisations_users
end
