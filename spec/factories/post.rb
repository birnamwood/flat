FactoryBot.define do
  factory :post do
    sequence(:post_name) { |n| "投稿場所#{n}"}
    sequence(:body) { |n| "紹介文#{n}"}
    sequence(:zipcode) { |n| "999999#{n}"}
    sequence(:address) { |n| "住所その他#{n}"}

    trait :no_post_name do
      post_name {}
    end
    trait :length_1_post_name do
      post_name {Faker::Lorem.characters(number: 1)}
    end
    trait :length_50_post_name do
      post_name {Faker::Lorem.characters(number: 50)}
    end
    trait :too_long_post_name do
      post_name {Faker::Lorem.characters(number: 51)}
    end
    trait :no_body do
      body {}
    end

  end
end