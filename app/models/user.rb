class User < ApplicationRecord
  validates :email_id, uniqueness: true

  has_many :user_educations
  #to upload image
  has_one_attached :image
end
