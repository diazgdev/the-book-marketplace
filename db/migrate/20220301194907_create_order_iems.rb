class CreateOrderIems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :book_id
      t.integer :order_id
      t.decimal :total

      t.timestamps
    end
  end
end
