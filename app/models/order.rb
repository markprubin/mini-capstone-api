class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product #one product per order
  
  #has_many :products #shopping cart style
end
