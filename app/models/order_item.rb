class OrderItem < ApplicationRecord
  validates :book_id, uniqueness: { scope: :order_id }

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
