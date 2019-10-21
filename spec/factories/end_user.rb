FactoryBot.define do

  password = Faker::Internet.password

  factory :end_user do
    sequence(:name) { |n| "exmaple-name#{n}"}
    sequence(:nickname) { |n| "example-nickname#{n}"}
    sequence(:email) { |n| "example#{n}@example.com"}
    password { password }
    password_confirmation { password }
    icon_image_id {}

    #アイコン画像
    trait :create_with_image do
      # icon_image_id Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image.jpg'))
      icon_image_id {}
    end
    # nameカラム
    trait :no_name do
      name {}
    end
    trait :length_1_name do
      name {Faker::Lorem.characters(number: 1)}
    end
    trait :length_30_name do
      name {Faker::Lorem.characters(number: 30)}
    end
    trait :too_long_name do
      name {Faker::Lorem.characters(number: 31)}
    end

    # nicknameカラム
    trait :no_nickname do
      nickname {}
    end
    trait :length_1_nickname do
      nickname {Faker::Lorem.characters(number: 1)}
    end
    trait :length_30_nickname do
      nickname {Faker::Lorem.characters(number: 30)}
    end
    trait :too_long_nickname do
      nickname {Faker::Lorem.characters(number: 31)}
    end

  end
end