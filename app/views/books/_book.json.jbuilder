json.extract! book, :id, :title, :description, :author, :price, :seller_id, :created_at, :updated_at
json.url book_url(book, format: :json)
