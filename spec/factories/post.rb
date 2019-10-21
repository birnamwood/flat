FactoryBot.define do
  factory :post do
    sequence(:post_name) { |n| "投稿場所#{n}"}
    sequence(:body) { |n| "紹介文#{n}"}
    sequence(:zipcode) { |n| "999999#{n}"}
    sequence(:address) { |n| "住所その他#{n}"}

    trait :no_post_name do
      post_name {}
    end

  end
end