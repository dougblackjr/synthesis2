class Bed < ActiveRecord::Base
  belongs_to :place
  belongs_to :resident
end
