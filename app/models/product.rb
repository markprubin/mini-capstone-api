class Product < ApplicationRecord

  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true, length: { in: 10..500 }
  has_many :orders        
  belongs_to :supplier
  has_many :images
  has_many :category_products

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images

  # def images
  #   Image.where(product_id: id)
  # end


  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def subtotal
    price * quantity
  end

  def tax
    tax = price * 0.09
  end

  def total
    sum = tax + price
    sum
  end

end
