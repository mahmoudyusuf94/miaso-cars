class Car < ApplicationRecord
  has_many :drivers
  has_many :battery_changes
  has_many :fixes
  has_many :oil_changes
  has_many :tyre_changes

	def to_s
		"#{brand} #{model} -> #{plate_no} -> #{assigned}"
	end
end
