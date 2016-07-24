class Admission < ActiveRecord::Base
  belongs_to :bed
  belongs_to :program
  
  belongs_to :resident

end
