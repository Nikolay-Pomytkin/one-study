class Course < ActiveRecord::Base
  validates_presence_of :name, :description, :teacher_id
  validates_uniqueness_of :name, :description

  belongs_to :teacher
  has_many :guides
end
