Order.seed do |s|
  s.id = 1
  s.customer_id = 4
  s.payment_method = 1
  s.postal_code = '111-1234'
  s.address = '222 Anthony rd, Austin, TX'
  s.name = "Woody Toy"
  s.total_payment = 3000
  s.shipping_fee = 300
  s.orders_status = 0
end

Order.seed do |s|
  s.id = 2
  s.customer_id = 3
  s.payment_method = 1
  s.postal_code = '111-1234'
  s.address = '555 TTT rd, Austin, TX'
  s.name = "Forkey Toy"
  s.total_payment = 2700
  s.shipping_fee = 300
  s.orders_status = 0
end