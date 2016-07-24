class Bed < ActiveRecord::Base
  belongs_to :place
  belongs_to :resident

	def bedfullname
		"#{bedLocation} - #{bedNumber}"
	end

end
