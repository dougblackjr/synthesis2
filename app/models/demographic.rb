class Demographic < ActiveRecord::Base
  belongs_to :resident
  belongs_to :drug
end
