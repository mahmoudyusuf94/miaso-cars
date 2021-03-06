ActiveAdmin.register BatteryChange do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
menu priority: 4
permit_params :car_id, :date, :type, :waranty, :brand
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
		column :car 
		column :date
		column :brand
		column :waranty
		actions
	end

	filter :car, as: :select
	filter :waranty, as: :select
	filter :date, as: :date_range
end
