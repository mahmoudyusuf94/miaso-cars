ActiveAdmin.register Fix do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :car_id, :type, :date, :place, :who , :notes
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	index do
		column :car 
		column :type
		column :date
		column :place
		column :who
		column :notes
		actions
	end

	filter :car, as: :select
	filter :date, as: :date_range
	filter :who, as: :select

end
