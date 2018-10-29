ActiveAdmin.register Car do
  menu priority: 1
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

    panel 'تغيير بطاريات' do
      battery_changes = resource.battery_changes.last
      table_for battery_changes do
        column :date
        column :brand
        column :waranty
      end
      strong { link_to "عرض كل تغييرات البطاريات لهذه السيارة", admin_car_battery_changes_path(resource) }
    end

    panel 'إصلاحات' do
      fixes = resource.fixes.last
      table_for fixes do
        column :form
        column :date
        column :place
        column :who
        column :notes
      end
      strong { link_to "عرض كل الإصلاحات لهذه السيارة", admin_car_fixes_path(resource) }
    end

    panel 'تغيير زيت' do
      oil_changes = resource.oil_changes.last
      table_for oil_changes do
        column :date
        column :brand
        column :km
      end
      strong { link_to "عرض كل تغييرات الزيت لهذه السيارة", admin_car_oil_changes_path(resource) }
    end

    panel 'تغيير كاوتش' do
      tyre_changes = resource.tyre_changes.last
      table_for tyre_changes do
        column :date
        column :brand
        column :num
      end
      strong { link_to "عرض كل تغييرات الكاوتش لهذه السيارة", admin_car_tyre_changes_path(resource) }
    end
  end
end
