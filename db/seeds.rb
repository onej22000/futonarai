# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create!(email: "nobunaga@gmail.com",
                  password: "nobunaga",
                  family_name: "織田",
                  first_name: "信長",
                  kana_family_name: "オダ",
                  kana_first_name: "ノブナガ",
                  postal_code: "1111111",
                  address: "尾張",
                  tel: "0000000000",
                  created_at: "1534-06-23",
                  updated_at: "2022-03-01")

Customer.create!(email: "hideyoshi@gmail.com",
                  password: "hideyoshi",
                  family_name: "豊臣",
                  first_name: "秀吉",
                  kana_family_name: "トヨトミ",
                  kana_first_name: "ヒデヨシ",
                  postal_code: "2222222",
                  address: "大阪",
                  tel: "0000000000",
                  created_at: "1537-03-17",
                  updated_at: "2022-03-01")

Customer.create!(email: "ieyasu@gmail.com",
                  password: "ieyasu",
                  family_name: "徳川",
                  first_name: "家康",
                  kana_family_name: "トクガワ",
                  kana_first_name: "イエヤス",
                  postal_code: "3333333",
                  address: "三河",
                  tel: "0000000000",
                  created_at: "1543-01-31",
                  updated_at: "2022-03-01")

Customer.create!(email: "shingen@gmail.com",
                  password: "shingen",
                  family_name: "武田",
                  first_name: "信玄",
                  kana_family_name: "タケダ",
                  kana_first_name: "シンゲン",
                  postal_code: "9999999",
                  address: "甲斐",
                  tel: "99999999999",
                  created_at: "1521-02-20",
                  updated_at: "2022-03-01")

Customer.create!(email: "kenshin@gmail.com",
                  password: "kenshin",
                  family_name: "上杉",
                  first_name: "謙信",
                  kana_family_name: "ウエスギ",
                  kana_first_name: "ケンシン",
                  postal_code: "9999999",
                  address: "越後",
                  tel: "99999999999",
                  created_at: "1530-02-18",
                  updated_at: "2022-03-01")

service = Service.create!(name: "敷布団（ポリエステル）シングル",
                  explanation: "ポリエステルの敷布団シングル洗い</br>仕上がり時間：１時間程度",
                  price_without_tax: "2000",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "敷布団（ポリエステル以外）シングル",
                  explanation: "ポリエステル以外の敷布団シングル洗い</br>仕上がり時間：１時間30分程度",
                  price_without_tax: "2500",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "敷布団（ポリエステル）ダブル",
                  explanation: "ポリエステルの敷布団ダブル洗い</br>仕上がり時間：１時間30分程度",
                  price_without_tax: "2500",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "敷布団（ポリエステル以外）ダブル",
                  explanation: "ポリエステル以外の敷布団ダブル洗い</br>仕上がり時間:2時間程度",
                  price_without_tax: "3000",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "掛布団（ポリエステル）シングル",
                  explanation: "ポリエステルの掛布団シングル洗い</br>仕上がり時間：１時間程度",
                  price_without_tax: "2000",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "掛布団（ポリエステル以外）シングル",
                  explanation: "ポリエステル以外の掛布団シングル洗い</br>仕上がり時間：１時間30分程度",
                  price_without_tax: "2500",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "掛布団（ポリエステル）ダブル",
                  explanation: "ポリエステルの掛布団ダブル洗い</br>仕上がり時間：１時間30分程度",
                  price_without_tax: "2500",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "掛布団（ポリエステル以外）ダブル",
                  explanation: "ポリエステル以外の掛布団ダブル洗い</br>仕上がり時間：2時間程度",
                  price_without_tax: "3000",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')

service = Service.create!(name: "毛布",
                  explanation: "布団と一緒に出していただくと500円</br>仕上がり時間：30分程度",
                  price_without_tax: "500",
                  created_at: "2022-03-01",
                  updated_at: "2022-03-01")
service.image.attach(io: File.open(Rails.root.join('app/assets/images/shiki.jpg')),
                  filename: 'shiki.jpg')


