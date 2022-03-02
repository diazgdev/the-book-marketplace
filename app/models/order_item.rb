class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :book

  def total
    book.price
  end

  private

  def set_total
    self[:total] = total * quantity
  end
end
