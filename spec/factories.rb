FactoryBot.define do
  sequence :email do |n|
    "someone#{n}@example.com"
  end

  sequence(:password) do |_|
    "P@SSW0RD"
  end

  factory :user do
    email
    password
  end
end
