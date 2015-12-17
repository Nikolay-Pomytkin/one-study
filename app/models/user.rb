class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :accesses
  has_many :guides
  has_many :notifications
  validates_presence_of :name

  has_attached_file :profile_picture, default_url: "/images/profile/missing.png"
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :profile_picture, less_than: 1.megabytes
end
