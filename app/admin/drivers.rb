ActiveAdmin.register Driver do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
menu priority: 2
permit_params :name, :grade, :car_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	index do
		column :name
		column :grade
		column :car
		actions
	end

	filter :car, as: :select 
	filter :grade, as: :select
end
