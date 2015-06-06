class School < ActiveRecord::Base
  has_many :teachers
  validates_presence_of :name, :state, :city, :zipcode
  validates_uniqueness_of :name
end