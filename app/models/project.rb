class Project < ApplicationRecord
  belongs_to :organisation

  has_many :projects_tags
  has_many :projects_users

  has_many :users, through: :projects_users
  has_many :tags, through: :projects_tags

  enum status: [:draft, :not_started, :in_progress, :finished]
end
