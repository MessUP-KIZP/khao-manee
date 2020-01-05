class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable, :trackable, :recoverable, :rememberable, :validatable

  has_many :tags_users
  has_many :roles_users
  has_many :projects_users
  has_many :organisations_users

  has_many :organisations, through: :organisations_users
  has_many :projects, through: :projects_users
  has_many :tags, through: :tags_users
  has_many :roles, through: :roles_users
end
