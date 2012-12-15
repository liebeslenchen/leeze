# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    #name "MyString"
    sequence(:name) { |n| "My category #{n}" }
  end
end
