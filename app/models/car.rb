class Car < ApplicationRecord
  has_many :drivers, dependent: :nullify
  has_many :battery_changes, dependent: :destroy
  has_many :fixes, dependent: :destroy
  has_many :oil_changes, dependent: :destroy
  has_many :tyre_changes, dependent: :destroy

	def to_s
		"#{brand} #{model} -> #{plate_no} -> #{assigned}"
	end
end
