class Order < ApplicationRecord
  has_many :carted_products
  
  belongs_to :user
  belongs_to :product #one product per order
  
  #has_many :products #shopping cart style
end
