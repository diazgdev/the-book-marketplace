class AddFieldsToBuyers < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers, :name, :string
    add_column :buyers, :address, :text
  end
end
