class Role < ApplicationRecord
  has_many :users, through: :roles_users

  enum role_type: [:admin, :organisation_admin, :volunteer]
end
