# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Region.create(region_name: '北海道地方', region_name_kana: 'ホッカイドウチホウ')
Region.create(region_name: '東北地方', region_name_kana: 'トウホクチホウ')
Region.create(region_name: '北陸地方', region_name_kana: 'ホクリクチホウ')
Region.create(region_name: '関東地方', region_name_kana: 'カントウチホウ')
Region.create(region_name: '中部地方', region_name_kana: 'チュウブチホウ')
Region.create(region_name: '関西地方', region_name_kana: 'カンサイチホウ')
Region.create(region_name: '中国地方', region_name_kana: 'チュウゴクチホウ')
Region.create(region_name: '四国地方', region_name_kana: 'シコクチホウ')
Region.create(region_name: '九州地方', region_name_kana: 'キュウシュウチホウ')
Region.create(region_name: '沖縄地方', region_name_kana: 'オキナワチホウ')

Prefecture.create(prefecture_name: '北海道', prefecture_name_kana: 'ホッカイドウ', region_id: '1')
Prefecture.create(prefecture_name: '青森県', prefecture_name_kana: 'アオモリケン', region_id: '2')
Prefecture.create(prefecture_name: '秋田県', prefecture_name_kana: 'アキタケン', region_id: '2')
Prefecture.create(prefecture_name: '岩手県', prefecture_name_kana: 'イワテケン', region_id: '2')
Prefecture.create(prefecture_name: '山形県', prefecture_name_kana: 'ヤマガタケン', region_id: '2')
Prefecture.create(prefecture_name: '宮城県', prefecture_name_kana: 'ミヤギケン', region_id: '2')
Prefecture.create(prefecture_name: '福島県', prefecture_name_kana: 'フクシマケン', region_id: '2')


Municipality.create(municipality_name: '札幌市', municipality_name_kana: 'サッポロシ', prefecture_id: '1')

Tag.create(tag_name: '自然', tag_name: '自然')
Tag.create(tag_name: 'レジャー', tag_name: 'レジャー')
Tag.create(tag_name: 'ツーリング', tag_name: 'ツーリング')