ActiveAdmin.register OilChange do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :car_id, :date, :type, :km
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
		column :type
		column :km
		actions
	end

	filter :car, as: :select
	filter :date, as: :date_range

end
