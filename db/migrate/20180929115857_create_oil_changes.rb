class CreateOilChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :oil_changes do |t|
      t.references :car, foreign_key: true
      t.date :date
      t.string :type
      t.integer :km

      t.timestamps
    end
  end
end
