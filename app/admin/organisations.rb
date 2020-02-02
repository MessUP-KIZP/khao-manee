ActiveAdmin.register Organisation do
  config.filters = false
  permit_params :name, :website
end
