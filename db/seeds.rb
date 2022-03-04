# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create!(email: "tanjiro@gmail.com",
                  password: "tanjiro",
                  family_name: "竈門",
                  first_name:"炭治郎",
                  kana_family_name:"カマド",
                  kana_first_name:"タンジロウ",
                  postal_code:"1111111",
                  address:"山の上",
                  tel:"0000000000",)

Customer.create!(email: "nezuko@gmail.com",
                  password: "nezuko",
                  family_name: "竈門",
                  first_name:"禰豆子",
                  kana_family_name:"カマド",
                  kana_first_name:"ネズコ",
                  postal_code:"2222222",
                  address:"山の上",
                  tel:"0000000000",
                  created_at:"2022-02-20",
                  updated_at:"2022-02-20")

Customer.create!(email: "kyojuro@gmail.com",
                  password: "kyojuro",
                  family_name: "煉獄",
                  first_name:"杏寿郎",
                  kana_family_name:"レンゴク",
                  kana_first_name:"キョウジュロウ",
                  postal_code:"3333333",
                  address:"お屋敷",
                  tel:"0000000000",
                  created_at:"2022-02-20",
                  updated_at:"2022-02-20")

Customer.create!(email: "muzan@gmail.com",
                  password: "muzann",
                  family_name: "鬼舞辻",
                  first_name:"無惨",
                  kana_family_name:"キブツジ",
                  kana_first_name:"ムザン",
                  postal_code:"9999999",
                  address:"無限城",
                  tel:"99999999999",
                  created_at:"1022-02-20",
                  updated_at:"1022-02-20")