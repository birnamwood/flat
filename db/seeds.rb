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
Region.create(region_name: '近畿地方', region_name_kana: 'キンキチホウ')
Region.create(region_name: '中国地方', region_name_kana: 'チュウゴクチホウ')
Region.create(region_name: '四国地方', region_name_kana: 'シコクチホウ')
Region.create(region_name: '九州地方', region_name_kana: 'キュウシュウチホウ')
Region.create(region_name: '沖縄地方', region_name_kana: 'オキナワチホウ')

Prefecture.create(prefecture_name: '北海道', prefecture_name_kana: 'ホッカイドウ', region_id: '1')

Prefecture.create(prefecture_name: '青森県', prefecture_name_kana: 'アオモリケン', region_id: '2')
Prefecture.create(prefecture_name: '岩手県', prefecture_name_kana: 'イワテケン', region_id: '2')
Prefecture.create(prefecture_name: '宮城県', prefecture_name_kana: 'ミヤギケン', region_id: '2')
Prefecture.create(prefecture_name: '秋田県', prefecture_name_kana: 'アキタケン', region_id: '2')
Prefecture.create(prefecture_name: '山形県', prefecture_name_kana: 'ヤマガタケン', region_id: '2')
Prefecture.create(prefecture_name: '福島県', prefecture_name_kana: 'フクシマケン', region_id: '2')

Prefecture.create(prefecture_name: '新潟県', prefecture_name_kana: 'ニイガタケン', region_id: '3')
Prefecture.create(prefecture_name: '富山県', prefecture_name_kana: 'トヤマケン', region_id: '3')
Prefecture.create(prefecture_name: '石川県', prefecture_name_kana: 'イシカワケン', region_id: '3')
Prefecture.create(prefecture_name: '福井県', prefecture_name_kana: 'フクイケン', region_id: '3')

Prefecture.create(prefecture_name: '茨城県', prefecture_name_kana: 'イバラキケン', region_id: '4')
Prefecture.create(prefecture_name: '栃木県', prefecture_name_kana: 'トチギケン', region_id: '4')
Prefecture.create(prefecture_name: '群馬県', prefecture_name_kana: 'グンマケン', region_id: '4')
Prefecture.create(prefecture_name: '埼玉県', prefecture_name_kana: 'サイタマケン', region_id: '4')
Prefecture.create(prefecture_name: '千葉県', prefecture_name_kana: 'チバケン', region_id: '4')
Prefecture.create(prefecture_name: '東京都', prefecture_name_kana: 'トウキョウト', region_id: '4')
Prefecture.create(prefecture_name: '神奈川県', prefecture_name_kana: 'カナガワケン', region_id: '4')

Prefecture.create(prefecture_name: '山梨県', prefecture_name_kana: 'ヤマナシケン', region_id: '5')
Prefecture.create(prefecture_name: '長野県', prefecture_name_kana: 'ナガノケン', region_id: '5')
Prefecture.create(prefecture_name: '岐阜県', prefecture_name_kana: 'ギフケン', region_id: '5')
Prefecture.create(prefecture_name: '静岡県', prefecture_name_kana: 'シズオカケン', region_id: '5')
Prefecture.create(prefecture_name: '愛知県', prefecture_name_kana: 'アイチケン', region_id: '5')
Prefecture.create(prefecture_name: '三重県', prefecture_name_kana: 'ミエケン', region_id: '5')

Prefecture.create(prefecture_name: '大阪府', prefecture_name_kana: 'オオサカフ', region_id: '6')
Prefecture.create(prefecture_name: '京都府', prefecture_name_kana: 'キョウトフ', region_id: '6')
Prefecture.create(prefecture_name: '兵庫県', prefecture_name_kana: 'ヒョウゴケン', region_id: '6')
Prefecture.create(prefecture_name: '奈良県', prefecture_name_kana: 'ナラケン', region_id: '6')
Prefecture.create(prefecture_name: '三重県', prefecture_name_kana: 'ミエケン', region_id: '6')
Prefecture.create(prefecture_name: '滋賀県', prefecture_name_kana: 'シガケン', region_id: '6')
Prefecture.create(prefecture_name: '和歌山県', prefecture_name_kana: 'ワカヤマケン', region_id: '6')

Prefecture.create(prefecture_name: '岡山県', prefecture_name_kana: 'オカヤマケン', region_id: '7')
Prefecture.create(prefecture_name: '広島県', prefecture_name_kana: 'ヒロシマケン', region_id: '7')
Prefecture.create(prefecture_name: '山口県', prefecture_name_kana: 'ヤマグチケン', region_id: '7')
Prefecture.create(prefecture_name: '鳥取県', prefecture_name_kana: 'トットリケン', region_id: '7')
Prefecture.create(prefecture_name: '島根県', prefecture_name_kana: 'シマネケン', region_id: '7')

Prefecture.create(prefecture_name: '徳島県', prefecture_name_kana: 'トクシマケン', region_id: '8')
Prefecture.create(prefecture_name: '香川県', prefecture_name_kana: 'カガワケン', region_id: '8')
Prefecture.create(prefecture_name: '愛媛県', prefecture_name_kana: 'エヒメケン', region_id: '8')
Prefecture.create(prefecture_name: '高知県', prefecture_name_kana: 'コウチケン', region_id: '8')

Prefecture.create(prefecture_name: '福岡県', prefecture_name_kana: 'フクオカケン', region_id: '9')
Prefecture.create(prefecture_name: '佐賀県', prefecture_name_kana: 'サガケン', region_id: '9')
Prefecture.create(prefecture_name: '長崎県', prefecture_name_kana: 'ナガサキケン', region_id: '9')
Prefecture.create(prefecture_name: '大分県', prefecture_name_kana: 'オオイタケン', region_id: '9')
Prefecture.create(prefecture_name: '熊本県', prefecture_name_kana: 'クマモトケン', region_id: '9')
Prefecture.create(prefecture_name: '宮崎県', prefecture_name_kana: 'ミヤザキケン', region_id: '9')
Prefecture.create(prefecture_name: '鹿児島県', prefecture_name_kana: 'カゴシマケン', region_id: '9')

Prefecture.create(prefecture_name: '沖縄県', prefecture_name_kana: 'オキナワケン', region_id: '10')

Municipality.create(municipality_name: '札幌市', municipality_name_kana: 'サッポロシ', prefecture_id: '1')
Municipality.create(municipality_name: '函館市', municipality_name_kana: 'ハコダテシ', prefecture_id: '1')
Municipality.create(municipality_name: '小樽市', municipality_name_kana: 'オタルシ', prefecture_id: '1')
Municipality.create(municipality_name: '旭川市', municipality_name_kana: 'アサヒカワシ', prefecture_id: '1')
Municipality.create(municipality_name: '室蘭市', municipality_name_kana: 'ムロランシ', prefecture_id: '1')
Municipality.create(municipality_name: '釧路市', municipality_name_kana: 'クシロシ', prefecture_id: '1')
Municipality.create(municipality_name: '帯広市', municipality_name_kana: 'オビヒロシ', prefecture_id: '1')
Municipality.create(municipality_name: '北見市', municipality_name_kana: 'キタミシ', prefecture_id: '1')
Municipality.create(municipality_name: '夕張市', municipality_name_kana: 'ユウバリシ', prefecture_id: '1')
Municipality.create(municipality_name: '岩見沢市', municipality_name_kana: 'イワミザワシ', prefecture_id: '1')
Municipality.create(municipality_name: '網走市', municipality_name_kana: 'アバシリシ', prefecture_id: '1')
Municipality.create(municipality_name: '留萌市', municipality_name_kana: 'ルモイシ', prefecture_id: '1')
Municipality.create(municipality_name: '苫小牧市', municipality_name_kana: 'トマコマイシ', prefecture_id: '1')
Municipality.create(municipality_name: '稚内市', municipality_name_kana: 'ワッカナイシ', prefecture_id: '1')
Municipality.create(municipality_name: '美唄市', municipality_name_kana: 'ビバイシ', prefecture_id: '1')
Municipality.create(municipality_name: '芦別市', municipality_name_kana: 'アシベツシ', prefecture_id: '1')
Municipality.create(municipality_name: '江別市', municipality_name_kana: 'エベツシ', prefecture_id: '1')
Municipality.create(municipality_name: '赤平市', municipality_name_kana: 'アカビラシ', prefecture_id: '1')
Municipality.create(municipality_name: '紋別市', municipality_name_kana: 'モンベツシ', prefecture_id: '1')
Municipality.create(municipality_name: '士別市', municipality_name_kana: 'シベツシ', prefecture_id: '1')
Municipality.create(municipality_name: '名寄市', municipality_name_kana: 'ナヨロシ', prefecture_id: '1')
Municipality.create(municipality_name: '三笠市', municipality_name_kana: 'ミカサシ', prefecture_id: '1')
Municipality.create(municipality_name: '根室市', municipality_name_kana: 'ネムロシ', prefecture_id: '1')
Municipality.create(municipality_name: '千歳市', municipality_name_kana: 'チトセシ', prefecture_id: '1')
Municipality.create(municipality_name: '滝川市', municipality_name_kana: 'タキカワシ', prefecture_id: '1')
Municipality.create(municipality_name: '砂川市', municipality_name_kana: 'スナガワシ', prefecture_id: '1')
Municipality.create(municipality_name: '歌志内市', municipality_name_kana: 'ウタシナイシ', prefecture_id: '1')
Municipality.create(municipality_name: '深川市', municipality_name_kana: 'フカガワシ', prefecture_id: '1')
Municipality.create(municipality_name: '富良野市', municipality_name_kana: 'フラノシ', prefecture_id: '1')
Municipality.create(municipality_name: '登別市', municipality_name_kana: 'ノボリベツシ', prefecture_id: '1')
Municipality.create(municipality_name: '恵庭市', municipality_name_kana: 'エニワシ', prefecture_id: '1')
Municipality.create(municipality_name: '伊達市', municipality_name_kana: 'ダテシ', prefecture_id: '1')
Municipality.create(municipality_name: '北広島市', municipality_name_kana: 'キタヒロシマシ', prefecture_id: '1')
Municipality.create(municipality_name: '石狩市', municipality_name_kana: 'イシカリシ', prefecture_id: '1')
Municipality.create(municipality_name: '北斗市', municipality_name_kana: 'ホクトシ', prefecture_id: '1')
Municipality.create(municipality_name: '当別町', municipality_name_kana: 'トウベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '新篠津村', municipality_name_kana: 'シンシノツムラ', prefecture_id: '1')
Municipality.create(municipality_name: '松前町', municipality_name_kana: 'マツマエチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '福島町', municipality_name_kana: '福島町', prefecture_id: '1')
Municipality.create(municipality_name: '知内町', municipality_name_kana: 'シリウチチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '木古内町', municipality_name_kana: 'キコナイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '七飯町', municipality_name_kana: 'ナナエチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '鹿部町', municipality_name_kana: 'シカベチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '森町', municipality_name_kana: 'モリマチ', prefecture_id: '1')
Municipality.create(municipality_name: '八雲町', municipality_name_kana: 'ヤクモチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '長万部町', municipality_name_kana: 'オシャマンベチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '江差町', municipality_name_kana: 'エサシチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '上ノ国町', municipality_name_kana: 'カミノクニチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '厚沢部町', municipality_name_kana: 'アッサブチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '乙部町', municipality_name_kana: 'オトベチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '奥尻町', municipality_name_kana: 'オクシリチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '今金町', municipality_name_kana: 'イマカネチョウ', prefecture_id: '1')
Municipality.create(municipality_name: 'せたな町', municipality_name_kana: 'セタナチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '島牧町', municipality_name_kana: 'シママキムラ', prefecture_id: '1')
Municipality.create(municipality_name: '寿都町', municipality_name_kana: 'スッツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '黒松内町', municipality_name_kana: 'クロマツナイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '蘭越町', municipality_name_kana: 'ランコシチョウ', prefecture_id: '1')
Municipality.create(municipality_name: 'ニセコ町', municipality_name_kana: 'ニセコチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '真狩村', municipality_name_kana: 'マッカリムラ', prefecture_id: '1')
Municipality.create(municipality_name: '留寿都村', municipality_name_kana: 'ルスツムラ', prefecture_id: '1')
Municipality.create(municipality_name: '喜茂別町', municipality_name_kana: 'キモベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '京極町', municipality_name_kana: 'キョウゴクチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '倶知安町', municipality_name_kana: 'クッチャンチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '共和町', municipality_name_kana: 'キョウワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '岩内町', municipality_name_kana: 'イワナイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '泊村', municipality_name_kana: 'トマリムラ', prefecture_id: '1')
Municipality.create(municipality_name: '神恵内村', municipality_name_kana: 'カモエナイムラ', prefecture_id: '1')
Municipality.create(municipality_name: '積丹町', municipality_name_kana: 'シャコタンチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '古平町', municipality_name_kana: 'フルビラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '仁木町', municipality_name_kana: 'ニキチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '余市町', municipality_name_kana: 'ヨイチチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '赤井川村', municipality_name_kana: 'アカイガワムラ', prefecture_id: '1')
Municipality.create(municipality_name: '南幌町', municipality_name_kana: 'ナンポロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '奈井江町', municipality_name_kana: 'ナイエチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '砂川町', municipality_name_kana: 'スナガワムラ', prefecture_id: '1')
Municipality.create(municipality_name: '由仁町', municipality_name_kana: 'ユニチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '長沼町', municipality_name_kana: 'ナガヌマチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '栗山町', municipality_name_kana: 'クリヤマチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '月形町', municipality_name_kana: 'ツキガタチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '羅臼町', municipality_name_kana: 'ラウスチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '十津川町', municipality_name_kana: 'トツカワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '妹背牛町', municipality_name_kana: 'モセウシチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '秩父別町', municipality_name_kana: 'チップベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '雨竜町', municipality_name_kana: 'ウリュウチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '北竜町', municipality_name_kana: 'ホクリュウチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '沼田町', municipality_name_kana: 'ヌマタチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '鷹栖町', municipality_name_kana: 'タカスチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '東神楽町', municipality_name_kana: 'ヒガシカグラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '当麻町', municipality_name_kana: 'トウマチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '比布町', municipality_name_kana: 'ヒップチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '愛別町', municipality_name_kana: 'アイベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '上川町', municipality_name_kana: 'カミカワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '東川町', municipality_name_kana: 'ヒガシカワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '美瑛町', municipality_name_kana: 'ビエイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '富良野町', municipality_name_kana: 'フラノチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '中富良野町', municipality_name_kana: 'ナカフラノチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '南富良野町', municipality_name_kana: 'ミナミフラノチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '占冠村', municipality_name_kana: 'シムカップムラ', prefecture_id: '1')
Municipality.create(municipality_name: '和寒町', municipality_name_kana: 'ワッサムチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '剣淵町', municipality_name_kana: 'ケンブチチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '下川町', municipality_name_kana: 'シモカワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '美深町', municipality_name_kana: 'ミフカチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '音威子府村', municipality_name_kana: 'オトイネップムラ', prefecture_id: '1')
Municipality.create(municipality_name: '中川町', municipality_name_kana: 'ナカガワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '幌加内町', municipality_name_kana: 'ホロカナイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '増毛町', municipality_name_kana: 'マシケチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '小平町', municipality_name_kana: 'オビラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '苫前町', municipality_name_kana: 'トママエチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '羽幌町', municipality_name_kana: 'ハボロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '初山別村', municipality_name_kana: 'ショサンベツムラ', prefecture_id: '1')
Municipality.create(municipality_name: '遠別町', municipality_name_kana: 'エンベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '天塩町', municipality_name_kana: 'テシオチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '猿払村', municipality_name_kana: 'サルフツムラ', prefecture_id: '1')
Municipality.create(municipality_name: '浜頓別町', municipality_name_kana: 'ハマトンベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '中頓別町', municipality_name_kana: 'ナカトンベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '枝幸町', municipality_name_kana: 'エサシチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '豊富町', municipality_name_kana: 'トヨトミチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '礼文町', municipality_name_kana: 'レイブンチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '利尻町', municipality_name_kana: 'リシリチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '尻富士町', municipality_name_kana: 'リシリフジチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '幌延町', municipality_name_kana: 'ホロノベチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '美幌町', municipality_name_kana: 'ビホロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '津別町', municipality_name_kana: 'ツベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '斜里町', municipality_name_kana: 'シャリチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '清里町', municipality_name_kana: 'キヨサトチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '小清水町', municipality_name_kana: 'コシミズウチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '訓子府町', municipality_name_kana: 'クンネップチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '置戸町', municipality_name_kana: 'オトドケチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '佐呂間町', municipality_name_kana: 'サロマチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '遠軽町', municipality_name_kana: 'エンガルチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '湧別町', municipality_name_kana: 'ユウベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '滝上町', municipality_name_kana: 'タキノウエチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '興部町', municipality_name_kana: 'オコッペチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '西興部村', municipality_name_kana: 'ニシオコッペムラ', prefecture_id: '1')
Municipality.create(municipality_name: '雄武町', municipality_name_kana: 'オウムチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '大空町', municipality_name_kana: 'オオゾラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '豊浦町', municipality_name_kana: 'トヨウラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '壮瞥町', municipality_name_kana: 'ソウベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '白老町', municipality_name_kana: 'シラオイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '厚真町', municipality_name_kana: 'アツマチチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '洞爺湖町', municipality_name_kana: 'トウヤコチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '安平町', municipality_name_kana: 'アビラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: 'むかわ村', municipality_name_kana: 'ムカワムラ', prefecture_id: '1')
Municipality.create(municipality_name: '日高町', municipality_name_kana: 'ヒダカチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '平取町', municipality_name_kana: 'ヒラトリチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '新冠町', municipality_name_kana: 'ニイカップチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '浦河町', municipality_name_kana: 'ウラカワチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '様似町', municipality_name_kana: 'サマニチョウ', prefecture_id: '1')
Municipality.create(municipality_name: 'えりも町', municipality_name_kana: 'エリモチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '新ひだか町', municipality_name_kana: 'シンヒダカチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '音更町', municipality_name_kana: 'オトフケチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '士幌町', municipality_name_kana: 'シホロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '上士幌町', municipality_name_kana: 'カミシホロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '鹿追町', municipality_name_kana: 'シカオイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '新得町', municipality_name_kana: 'シントクチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '清水町', municipality_name_kana: 'シミズチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '芽室町', municipality_name_kana: 'メムロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '中札内村', municipality_name_kana: 'ナカサツナイムラ', prefecture_id: '1')
Municipality.create(municipality_name: '更別村', municipality_name_kana: 'サラベツムラ', prefecture_id: '1')
Municipality.create(municipality_name: '大樹町', municipality_name_kana: 'タキチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '広尾町', municipality_name_kana: 'ヒロオチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '幕別町', municipality_name_kana: 'マクベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '池田町', municipality_name_kana: 'イケダチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '豊頃町', municipality_name_kana: 'トヨコロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '本別町', municipality_name_kana: 'ホンベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '足寄町', municipality_name_kana: 'アショロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '陸別町', municipality_name_kana: 'リクベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '幌裏町', municipality_name_kana: 'ホロウラチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '釧路町', municipality_name_kana: 'クシロチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '厚岸町', municipality_name_kana: 'アシケチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '浜中町', municipality_name_kana: 'ハマナカチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '標茶町', municipality_name_kana: 'シベチャチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '弟子屈町', municipality_name_kana: 'テシカガチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '鶴居村', municipality_name_kana: 'ツルイムラ', prefecture_id: '1')
Municipality.create(municipality_name: '白糠町', municipality_name_kana: 'シラヌカチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '別海町', municipality_name_kana: 'ベツカイチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '中標津町', municipality_name_kana: 'ナカシベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '標津町', municipality_name_kana: 'シベツチョウ', prefecture_id: '1')
Municipality.create(municipality_name: '羅臼町', municipality_name_kana: 'ラウスチョウ', prefecture_id: '1')

Municipality.create(municipality_name: '青森市', municipality_name_kana: 'アオモリシ', prefecture_id: '2')
Municipality.create(municipality_name: '弘前市', municipality_name_kana: 'ヒロサキシ', prefecture_id: '2')
Municipality.create(municipality_name: '八戸市', municipality_name_kana: 'ハチノヘシ', prefecture_id: '2')
Municipality.create(municipality_name: '黒石市', municipality_name_kana: 'クロイシシ', prefecture_id: '2')
Municipality.create(municipality_name: '五所川原市', municipality_name_kana: 'ゴショガワラシ', prefecture_id: '2')
Municipality.create(municipality_name: '十和田市', municipality_name_kana: 'トワダシ', prefecture_id: '2')
Municipality.create(municipality_name: '三沢市', municipality_name_kana: 'ミサワシ', prefecture_id: '2')
Municipality.create(municipality_name: 'むつ市', municipality_name_kana: 'ムツシ', prefecture_id: '2')
Municipality.create(municipality_name: 'つがる市', municipality_name_kana: 'ツガルシ', prefecture_id: '2')
Municipality.create(municipality_name: '平川市', municipality_name_kana: 'ヒラカワシ', prefecture_id: '2')
Municipality.create(municipality_name: '平内町', municipality_name_kana: 'ヒラナイマチ', prefecture_id: '2')
Municipality.create(municipality_name: '今別町', municipality_name_kana: 'イマベツマチ', prefecture_id: '2')
Municipality.create(municipality_name: '蓬田村', municipality_name_kana: 'ヨモギダムラ', prefecture_id: '2')
Municipality.create(municipality_name: '外ヶ浜町', municipality_name_kana: 'ソトガハママチ', prefecture_id: '2')
Municipality.create(municipality_name: '鰺ヶ沢町', municipality_name_kana: 'アジガサワマチ', prefecture_id: '2')
Municipality.create(municipality_name: '深浦町', municipality_name_kana: 'フカウラマチ', prefecture_id: '2')
Municipality.create(municipality_name: '西目屋村', municipality_name_kana: 'ニシメヤムラ', prefecture_id: '2')
Municipality.create(municipality_name: '藤崎町', municipality_name_kana: 'フジサキマチ', prefecture_id: '2')
Municipality.create(municipality_name: '大鰐町', municipality_name_kana: 'オオワニマチ', prefecture_id: '2')
Municipality.create(municipality_name: '田舎館村', municipality_name_kana: 'イナカダテムラ', prefecture_id: '2')
Municipality.create(municipality_name: '板柳町', municipality_name_kana: 'イタヤナギマチ', prefecture_id: '2')
Municipality.create(municipality_name: '鶴田町', municipality_name_kana: 'ツルタマチ', prefecture_id: '2')
Municipality.create(municipality_name: '中泊町', municipality_name_kana: 'ナカドマリマチ', prefecture_id: '2')
Municipality.create(municipality_name: '野辺地町', municipality_name_kana: 'ノヘジマチ', prefecture_id: '2')
Municipality.create(municipality_name: '七戸町', municipality_name_kana: 'シチノヘマチ', prefecture_id: '2')
Municipality.create(municipality_name: '六戸町', municipality_name_kana: 'ロクノヘマチ', prefecture_id: '2')
Municipality.create(municipality_name: '横浜町', municipality_name_kana: 'ヨコハママチ', prefecture_id: '2')
Municipality.create(municipality_name: '東北町', municipality_name_kana: 'トウホクマチ', prefecture_id: '2')
Municipality.create(municipality_name: '六ヶ所村', municipality_name_kana: 'ロッカショムラ', prefecture_id: '2')
Municipality.create(municipality_name: 'おいらせ町', municipality_name_kana: 'オイラセチョウ', prefecture_id: '2')
Municipality.create(municipality_name: '大間町', municipality_name_kana: 'オオママチ', prefecture_id: '2')
Municipality.create(municipality_name: '東通村', municipality_name_kana: 'ヒガシドオリムラ', prefecture_id: '2')
Municipality.create(municipality_name: '風間浦村', municipality_name_kana: 'カザマウラムラ', prefecture_id: '2')
Municipality.create(municipality_name: '佐井村', municipality_name_kana: 'サイムラ', prefecture_id: '2')
Municipality.create(municipality_name: '三戸町', municipality_name_kana: 'サンノヘマチ', prefecture_id: '2')
Municipality.create(municipality_name: '五戸町', municipality_name_kana: 'ゴヘノマチ', prefecture_id: '2')
Municipality.create(municipality_name: '田子町', municipality_name_kana: 'タッコマチ', prefecture_id: '2')
Municipality.create(municipality_name: '南部町', municipality_name_kana: 'ナンブチョウ', prefecture_id: '2')
Municipality.create(municipality_name: '階上町', municipality_name_kana: 'ハシカミチョウ', prefecture_id: '2')
Municipality.create(municipality_name: '新郷村', municipality_name_kana: 'シンゴウムラ', prefecture_id: '2')

Municipality.create(municipality_name: '盛岡市', municipality_name_kana: 'モリオカシ', prefecture_id: '3')
Municipality.create(municipality_name: '宮古市', municipality_name_kana: 'ミヤコシ', prefecture_id: '3')
Municipality.create(municipality_name: '大船渡市', municipality_name_kana: 'オオフナトシ', prefecture_id: '3')
Municipality.create(municipality_name: '花巻市', municipality_name_kana: 'ハナマキシ', prefecture_id: '3')
Municipality.create(municipality_name: '北上市', municipality_name_kana: 'キタカミシ', prefecture_id: '3')
Municipality.create(municipality_name: '久慈市', municipality_name_kana: 'クジシ', prefecture_id: '3')
Municipality.create(municipality_name: '遠野市', municipality_name_kana: 'トオノシ', prefecture_id: '3')
Municipality.create(municipality_name: '市関市', municipality_name_kana: 'イチノセキシ', prefecture_id: '3')
Municipality.create(municipality_name: '陸前高田市', municipality_name_kana: 'リクゼンタカタシ', prefecture_id: '3')
Municipality.create(municipality_name: '釜石市', municipality_name_kana: 'カマイシシ', prefecture_id: '3')
Municipality.create(municipality_name: '二戸市', municipality_name_kana: 'ニノヘシ', prefecture_id: '3')
Municipality.create(municipality_name: '八幡平市', municipality_name_kana: 'ハチマンタイシ', prefecture_id: '3')
Municipality.create(municipality_name: '奥州市', municipality_name_kana: 'オウシュウシ', prefecture_id: '3')
Municipality.create(municipality_name: '滝沢市', municipality_name_kana: 'タキザワシ', prefecture_id: '3')
Municipality.create(municipality_name: '雫石町', municipality_name_kana: 'シズクイシチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '葛巻町', municipality_name_kana: 'クズマキマチ', prefecture_id: '3')
Municipality.create(municipality_name: '岩手町', municipality_name_kana: 'イワテマチ', prefecture_id: '3')
Municipality.create(municipality_name: '紫波町', municipality_name_kana: 'シワチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '矢巾町', municipality_name_kana: 'ヤハバチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '西和賀町', municipality_name_kana: 'ニシワガマチ', prefecture_id: '3')
Municipality.create(municipality_name: '金ケ崎町', municipality_name_kana: 'カネガサキチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '平泉町', municipality_name_kana: 'ヒライズミチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '住田町', municipality_name_kana: 'スミタチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '大槌町', municipality_name_kana: 'オオツチチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '山田町', municipality_name_kana: 'ヤマダマチ', prefecture_id: '3')
Municipality.create(municipality_name: '岩泉町', municipality_name_kana: 'イワイズミチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '田野畑村', municipality_name_kana: 'タノハタムラ', prefecture_id: '3')
Municipality.create(municipality_name: '普代村', municipality_name_kana: 'フダイムラ', prefecture_id: '3')
Municipality.create(municipality_name: '軽米町', municipality_name_kana: 'カルマイマチ', prefecture_id: '3')
Municipality.create(municipality_name: '野田村', municipality_name_kana: 'ノダムラ', prefecture_id: '3')
Municipality.create(municipality_name: '九戸村', municipality_name_kana: 'クノヘムラ', prefecture_id: '3')
Municipality.create(municipality_name: '洋野町', municipality_name_kana: 'ヒロノチョウ', prefecture_id: '3')
Municipality.create(municipality_name: '一戸町', municipality_name_kana: 'イチノヘマチ', prefecture_id: '3')

Tag.create(tag_name: '自然・景勝地', tag_content: '自然・景勝地')
Tag.create(tag_name: '景色', tag_content: '景色')
Tag.create(tag_name: 'アウトドア・スポーツ', tag_content: 'アウトドア・スポーツ')
Tag.create(tag_name: 'ツーリング', tag_content: 'ツーリング')
Tag.create(tag_name: '寺社仏閣', tag_content: '寺社仏閣')
Tag.create(tag_name: '町並み・建築', tag_content: '町並み・建築')
Tag.create(tag_name: '歴史・文化施設', tag_content: '歴史・文化施設')
Tag.create(tag_name: '史跡・文化財', tag_content: '史跡・文化財')
Tag.create(tag_name: '庭園・公園', tag_content: '庭園・公園')
Tag.create(tag_name: '美術館・博物館', tag_content: '美術館・博物館')
Tag.create(tag_name: '動物園・水族館', tag_content: '動物園・水族館')
Tag.create(tag_name: '温泉', tag_content: '温泉')
Tag.create(tag_name: '食事', tag_content: '食事')
Tag.create(tag_name: '酒屋・酒造・ワイナリー', tag_content: '酒屋・酒造・ワイナリー')
Tag.create(tag_name: '観光', tag_content: '観光')
Tag.create(tag_name: 'テーマパーク・体験施設', tag_content: 'テーマパーク・体験施設')
Tag.create(tag_name: '乗り物', tag_content: '乗り物')