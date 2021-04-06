OrderDetail.seed do |s|
  s.id = 1
  s.item_id = 5
  s.order_id = 2
  s.amount = 5
  s.price = 1500
  s.shipping_fee = 300
  s.production_status = 0
end

OrderDetail.seed do |s|
  s.id = 2
  s.item_id = 5
  s.order_id = 1
  s.amount = 8
  s.price = 2400
  s.shipping_fee = 300
  s.production_status = 0
end
