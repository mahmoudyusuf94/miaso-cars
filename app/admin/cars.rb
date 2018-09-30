ActiveAdmin.register Car do

	permit_params :brand, :model, :plate_no, :assigned

	filter :brand, as: :select
	filter :model, as: :select
	filter :assigned, as: :select
	filter :plate_no, as: :select

	index do 
		column :brand
		column :model
		column :plate_no
		column :assigned
		actions
	end

	show do
    attributes_table do
      row :brand
      row :model
      row :plate_no
      row :assigned
    end

    panel 'Drivers' do
      drivers = resource.drivers
      table_for drivers do
        column :name do |driver|
					link_to driver.name, admin_driver_path(driver)
        end
        column :grade
      end
    end
  end


end
