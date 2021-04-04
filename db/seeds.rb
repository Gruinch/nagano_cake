# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Admin.create!(
    email: 'nagano@email.com',
    password: 'naganocake',
    )

  Customer.create!(
    email: 'hello@email.com',
    password: 'test123',
    last_name: '熊本',
    first_name: 'くまこ',
    last_name_kana: 'クマモト',
    first_name_kana: 'クマコ',
    postal_code: '111-1111',
    address: '沖縄県那覇市',
    telephone_number: '000-0000-0000'
    )

  Customer.create!(
    email: 'okay@test.com',
    password: 'test1234',
    last_name: '空腹',
    first_name: '桃子',
    last_name_kana: 'クウフク',
    first_name_kana: 'モモコ',
    postal_code: '111-1112',
    address: '沖縄県名護市',
    telephone_number: '000-0000-0001'
  )