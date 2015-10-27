class Teacher < ActiveRecord::Base
  belongs_to :school
  has_many :courses

  validates_presence_of :name, :description, :school_id
  validates_uniqueness_of :name
end
