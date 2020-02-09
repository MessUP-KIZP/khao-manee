ActiveAdmin.register Tag do
  config.filters = false
  permit_params :name, :type
end
