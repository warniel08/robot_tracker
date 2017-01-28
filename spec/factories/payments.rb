FactoryGirl.define do
  factory :payment do
    id "MyString"
    amount 1.5
    customer "MyString"
    currency "MyString"
    description "MyString"
    paid false
  end
end
