class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :addresses, dependent: :destroy
  has_many :items, through: :cart_items
  has_many :cart_items, dependent: :destroy
  has_many :order_details, through: :orders
  has_many :orders, dependent: :destroy


  def name
    "#{self.last_name} #{self.first_name}"
  end

  def name_kana
    "#{self.last_name_kana} #{self.first_name_kana}"
  end

end
