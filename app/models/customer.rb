class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         
  has_many:addresses, dependent: :destroy
  has_many:items, through: :cart_items
  has_many:cart_items, dependent: :destroy
  has_many:order_details, through: :orders
  has_many:orders, dependent: :destroy
  
  enum is_active: { active: true, inactive: false }
  
  def name
    "#{self.last_name} #{self.first_name}"
  end

end
