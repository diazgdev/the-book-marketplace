class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :book

  def total
    order_item.book.price * order_item.quantity
  end

  private

  def set_total
    self[:total] = total * quantity
  end
end
