class Item < ApplicationRecord
  belongs_to:genres
  has_many:cart_items, dependent: :destroy
  has_many:order_details, dependent: :destroy
end
