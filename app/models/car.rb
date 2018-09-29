class Car < ApplicationRecord
  has_many :drivers

	def to_s
		"#{brand} #{model} -> #{plate_no} "
	end
end
