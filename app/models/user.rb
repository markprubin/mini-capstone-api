class User < ApplicationRecord
  has_many :products
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
