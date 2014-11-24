ActiveAdmin.register ConfRoom do
  menu :priority => 3

  menu :parent => "Campuses"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :location, :sq_feet, :description, :user_id, :pic, :campus_id, :remove_pic, :feature_ids => []
end
