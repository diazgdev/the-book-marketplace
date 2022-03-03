class Book < ApplicationRecord
  belongs_to :seller
  has_many :order_items
  has_one :order_item

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :author, presence: true, length: { minimum: 3, maximum: 50 }
  validates :price, presence: true

  # def sold?
  #   order_item.present? && order_item.order.status == "processed"
  # end

  # def reserved?
  #   order_item.present? && order_item.order.status == "pending"
  # end
end
