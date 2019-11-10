class Tag < ApplicationRecord
  has_many :organisations, through: :organisations_tags
  has_many :users, through: :tags_users
  has_many :projects, through: :projects_tags
end
