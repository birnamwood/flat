FactoryBot.define do
  factory :post_image do
    sequence(:post_image_id) {Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image.jpg'))}
    sequence(:post_image_comment) {"画像コメント"}
  end
end