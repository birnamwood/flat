FactoryBot.define do
  factory :prefecture do
    sequence(:id) {"1"}
    sequence(:prefecture_name) {"北海道"}
    sequence(:prefecture_name_kana) {"ホッカイドウ"}
  end
end