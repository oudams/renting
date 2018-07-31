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

    trait :admin do
      role "admin"
    end
  end

  factory :post do
    title "post title"
    content "Sample post content."
    status "active"
  end
end
