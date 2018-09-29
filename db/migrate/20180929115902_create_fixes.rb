class CreateFixes < ActiveRecord::Migration[5.2]
  def change
    create_table :fixes do |t|
      t.references :car, foreign_key: true
      t.string :type
      t.date :date
      t.string :place
      t.string :who
      t.string :notes

      t.timestamps
    end
  end
end
