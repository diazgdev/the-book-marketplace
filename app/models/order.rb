class Order < ApplicationRecord
  has_many :order_items
  before_save :set_total

  def total
    order_items.collect{|order_item| order_item.valid? ? order_item.book.price * order_item.quantity : 0}.sum
  end

  private

  def set_total
    self[:total] = total
  end
end
