class Order < ApplicationRecord
  enum payment_method: { card:0, cash:1 } #card=クレカ cash=銀行振り込み
  enum orders_status: {入金待ち: 0, 入金確認:1, 製作中:2, 発送準備中:3, 発送済み:4}

  has_many:order_details, dependent: :destroy
  belongs_to:customer
end
