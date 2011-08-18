require 'uri'

class Location < ActiveRecord::Base
  
  has_many  :occupants
  
  validates :name,                      :presence => true
  validates :description,               :presence => true
  validates :image_url,                 :presence => true
  validates_format_of :image_url,       :with => URI::regexp(%w(http https))  
  validates_uniqueness_of :placement
  validates_numericality_of :placement, :less_than_or_equal_to => 9999
  
  
end
