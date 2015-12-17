class School < ActiveRecord::Base
  has_many :teachers

  validates_uniqueness_of :name
  validates_presence_of :name, :info, :state, :city, :zipcode
end
