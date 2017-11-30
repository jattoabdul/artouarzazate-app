class Customer < ApplicationRecord
  has_one :cart
  has_secure_password
  validates :username, presence: true,
  format: { with: /\A[a-zA-Z]+\z/, message: "only allows alphanumeric" }
  validates :address, presence: true, length: { maximum: 300 }
  validates :email, presence: true
  validates :password, presence: true, length: { in: 6..20 }
end
