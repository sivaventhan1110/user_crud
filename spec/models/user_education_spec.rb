require 'rails_helper'

RSpec.describe UserEducation, type: :model do
  it "is not valid without a degree" do
    user = UserEducation.new(degree: nil)
    expect(user).to_not be_valid
  end
  it "is not valid without a grade" do
    user = UserEducation.new(grade: nil)
    expect(user).to_not be_valid
  end
    it "is not valid without a university_name" do
    user = UserEducation.new(university_name: nil)
    expect(user).to_not be_valid
  end
end
