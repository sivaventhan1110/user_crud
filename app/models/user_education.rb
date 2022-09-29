class UserEducation < ApplicationRecord
  validates_presence_of :degree
  validates_presence_of :grade
  validates_presence_of :university_name
end
