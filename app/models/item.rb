class Item < ApplicationRecord
  belongs_to:genres, optional: true
  has_many:cart_items, dependent: :destroy
  has_many:order_details, dependent: :destroy
  attachment :image
end
