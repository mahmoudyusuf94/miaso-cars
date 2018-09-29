class Car < ApplicationRecord
	def to_s
		"#{brand} #{model} -> #{plate_no} "
	end
end
