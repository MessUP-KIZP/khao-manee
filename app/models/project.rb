class Project < ApplicationRecord
  belongs_to :organisation
  has_many :users, through: :projects_users
  has_many :tags, through: :projects_tags
end
