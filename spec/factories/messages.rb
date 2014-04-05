# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    sender_id 1
    reseiver_id 1
    content "MyString"
  end
end
