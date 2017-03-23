FactoryGirl.define do
  sequence :email do |n|
    "human.#{n}@example.com"
  end
  factory :human do
    email
    first_name {FFaker::Name.first_name}
    last_name {FFaker::Name.last_name}
  end
end