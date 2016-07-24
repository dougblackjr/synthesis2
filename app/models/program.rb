class Program < ActiveRecord::Base
  belongs_to :place

  has_many :admissions
end
