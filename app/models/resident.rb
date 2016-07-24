class Resident < ActiveRecord::Base
  after_create :setup_demographic

  belongs_to :place

  mount_uploader :picture, PictureUploader

  has_many :demographics
  has_many :admissions

	def setup_demographic
    	Demographic.create(resident_id: self.id)
	end

	def fullname
		"#{firstname} #{lastname}"
	end
end
