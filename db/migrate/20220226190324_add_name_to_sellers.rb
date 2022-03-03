class AddNameToSellers < ActiveRecord::Migration[6.1]
  def change
    add_column :sellers, :name, :string
    add_column :sellers, :phone, :string
  end
end
