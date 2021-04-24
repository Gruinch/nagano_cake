class Order < ApplicationRecord
  enum payment_method: { card: 0, cash: 1 } #card=クレカ cash=銀行振り込み
  #入金待ち:0, 入金確認:1, 製作中:2, 発送準備中:3, 発送済み:4
  enum order_status: {
    waiting: 0,
    paid_up: 1,
    making: 2,
    preparing: 3,
    shipped: 4
 }
  has_many:items, through: :order_details
  has_many:order_details, dependent: :destroy
  belongs_to:customer

end
