ActiveAdmin.register Car do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :brand, :model, :plate_no, :assigned

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	index do 
		column :brand
		column :model
		column :plate_no
		column :assigned
		actions
	end


	filter :brand, as: :select
	filter :model, as: :select
	filter :assigned, as: :select
	filter :plate_no, as: :select
end
