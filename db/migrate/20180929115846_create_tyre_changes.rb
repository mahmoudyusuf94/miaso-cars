class CreateTyreChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :tyre_changes do |t|
      t.references :car, foreign_key: true
      t.date :date
      t.string :type
      t.integer :num

      t.timestamps
    end
  end
end
