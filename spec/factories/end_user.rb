FactoryBot.define do

  password = Faker::Internet.password

  factory :end_user do
    sequence(:name) { |n| "exmaple-name#{n}"}
    sequence(:nickname) { |n| "example-nickname#{n}"}
    sequence(:email) { |n| "example#{n}@example.com"}
    password { password }
    password_confirmation { password }

    trait :no_name do
      name {}
    end

    trait :too_long_name do
      name {Faker::Lorem.characters(number: 21)}
    end

  end
end