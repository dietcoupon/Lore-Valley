class Occupant < ActiveRecord::Base
  
  belongs_to :location
  
  validates :alias,                              :presence => true
  validates_numericality_of :current_location,  :less_than_or_equal_to => 9999
  validates_uniqueness_of :id
  validates_numericality_of :id
  
end
