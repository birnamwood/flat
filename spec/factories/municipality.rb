FactoryBot.define do
  factory :municipality do
    sequence(:id) {"1"}
    sequence(:municipality_name) {"札幌市"}
    sequence(:municipality_name_kana) {"サッポロシ"}
  end
end