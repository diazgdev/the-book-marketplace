class Cart < ApplicationRecord
  has_many :order_items
  has_many :books, through: :order_items

end
