class User < ApplicationRecord
  validates :email_id, uniqueness: true

  has_many :user_educations
end
