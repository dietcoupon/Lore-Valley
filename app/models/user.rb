class User < ActiveRecord::Base
  
  has_one :occupant
  
  validates_uniqueness_of :id
  validates_numericality_of :id
  validates_uniqueness_of :username
  validates :password,                    :presence => true
  validates :email,                       :presence => true
  validates :alias,                       :presence => true
  validates_numericality_of :race,        :less_than => 11
  validates_numericality_of :class,       :less_than => 7
  validates_numericality_of :sex,         :less_than => 2
  validates_numericality_of :preference,  :less_than => 2
  validates_numericality_of :alignment,   :less_than => 10
   
  
end
