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

  Order.create!(
    customer_id: '2',
    payment_method: '1',
    address: '福岡県北九州市',
    postal_code: '222-2222',
    name: 'John Adams',
    total_payment: '1300',
    shipping_fee: '300',
    )

  Order.create!(
    customer_id: '1',
    payment_method: '1',
    address: '福岡県北九州市',
    postal_code: '222-2233',
    name: 'Ruby Jacobs',
    total_payment: '1500',
    shipping_fee: '300',
    )

  Order_details.create!(
    item_id: '1',
    order_id: '1',
    amount: '5',
    price: '1000',
    shipping_fee: '300'
    )

    Order_details.create!(
    item_id: '1',
    order_id: '2',
    amount: '5',
    price: '1200',
    shipping_fee: '300'
    )