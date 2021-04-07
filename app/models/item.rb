class Item < ApplicationRecord
  belongs_to:genres, optional: true
  has_many:customers, through: :cart_items
  has_many:cart_items, dependent: :destroy
  has_many:orders, through: :order_details
  has_many:order_details, dependent: :destroy
  attachment :image
end
