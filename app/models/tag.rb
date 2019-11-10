class Tag < ApplicationRecord
  has_many :tags_users
  has_many :projects_tags
  has_many :organisations_tags

  has_many :organisations, through: :organisations_tags
  has_many :users, through: :tags_users
  has_many :projects, through: :projects_tags

  enum tag_type: [:skill, :focus]
end
