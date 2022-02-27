class Book < ApplicationRecord
  belongs_to :seller

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :author, presence: true, length: { minimum: 3, maximum: 50 }
  validates :price, presence: true
end
