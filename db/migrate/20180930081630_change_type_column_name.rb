class ChangeTypeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tyre_changes, :type, :brand
  	rename_column :battery_changes, :type, :brand
  	rename_column :oil_changes, :type, :brand
  	rename_column :fixes, :type, :form
  end
end
