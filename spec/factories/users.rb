FactoryBot.define do
  factory :user do
    firstname {'Test user'}
    lastname {'Test user'}
    email_id {'test@gmail.com'}
    dob {'12-09-1999'}
    contact_no {'09290000'}
    address {'xyz'}
  end
end
