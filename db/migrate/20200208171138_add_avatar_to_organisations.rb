class AddAvatarToOrganisations < ActiveRecord::Migration[5.2]
  def change
    add_column :organisations, :avatar, :string
  end
end
