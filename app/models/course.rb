class Course < ActiveRecord::Base
  belongs_to :teacher
  has_many :guides
end
