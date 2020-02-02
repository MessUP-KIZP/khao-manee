ActiveAdmin.register User do
  config.filters = true

  filter :organisations
  filter :email

  index do
    column :id
    column :username
    column :first_name
    column :last_name
    column :email
    actions
  end
end
