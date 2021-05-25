# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "管理者",
  email: "email@sample.com",
  password:              "foobar",
  password_confirmation: "foobar",
  )

Question.create(title: 'テスト題名', content: 'テストコンテンツ', user_id: 1)

Question.create(title: 'テスト題名２', content: 'テストコンテンツ２', user_id: 1)