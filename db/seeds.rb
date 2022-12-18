# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (1..5).each do |n|
#   Customer.create!(
#    email: "test#{n}@test.com",
#    password: "password",
#    last_name: "test#{n}",
#    first_name: "taro"
#  )
#end


Genre.find_or_create_by(name:'ピアス')
Genre.find_or_create_by(name:'イヤリング')
Genre.find_or_create_by(name:'ネックレス')
Genre.find_or_create_by(name:'ヘアゴム')
Genre.find_or_create_by(name:'シュシュ')
Genre.find_or_create_by(name:'リング')
Genre.find_or_create_by(name:'ブレスレット')
Genre.find_or_create_by(name:'アンクレット')
Genre.find_or_create_by(name:'その他')





