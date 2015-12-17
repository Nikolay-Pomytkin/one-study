class Guide < ActiveRecord::Base
  has_many :accesses
  belongs_to :user
  belongs_to :course

  validates_presence_of :title, :body, :user_id
end
