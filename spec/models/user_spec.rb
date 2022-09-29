require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without a email_id" do
    user = User.new(email_id: nil)
    expect(user).to_not be_valid
  end
  it "is not valid without a firstname" do
    user = User.new(firstname: nil)
    expect(user).to_not be_valid
  end
  it  "is not valid without a address" do
    user = User.new(address: nil)
    expect(user).to_not be_valid
  end
  it  "is not valid without a contact_no" do
    user = User.new(contact_no: nil)
    expect(user).to_not be_valid
  end
  it  "is not valid without a dob" do
    user = User.new(dob: nil)
    expect(user).to_not be_valid
  end
  it "is not valid without a unique email_id" do
    user1 = User.create(email_id: "test@gmail.com")
    user2 = User.new(email_id: "test@gmail.com")
    expect(user2).to_not be_valid
  end

end
