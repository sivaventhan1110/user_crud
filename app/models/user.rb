class User < ApplicationRecord
  validates_presence_of :email_id
  validates :email_id, uniqueness: true
  validates_presence_of :firstname
  validates_presence_of :address
  validates_presence_of :contact_no
  validates_presence_of :dob
  
  has_many :user_educations, dependent: :destroy
  #to upload image
  has_one_attached :image
end
