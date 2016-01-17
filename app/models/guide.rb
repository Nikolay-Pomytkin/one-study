class Guide < ActiveRecord::Base
  has_many :accesses
  belongs_to :user
  belongs_to :course
end
