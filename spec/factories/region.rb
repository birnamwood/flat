FactoryBot.define do
  factory :region do
    sequence(:id) {"1"}
    sequence(:region_name) {"北海道地方"}
    sequence(:region_name_kana) {"ホッカイドウチホウ"}
  end
end