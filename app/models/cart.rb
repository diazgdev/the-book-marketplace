class Cart < ApplicationRecord
  has_many :order_items
  has_many :books, through: :order_items

  # def total_price
  #   sum = 0
  #   order_items.each do |item|
  #     sum += item.total
  #   end
  #   sum
  # end

  # def self.total_price(cart)
  #   sum = 0
  #   cart.order_items.each do |item|
  #     sum += item.book.price
  #   end
  #   sum
  # end
end
