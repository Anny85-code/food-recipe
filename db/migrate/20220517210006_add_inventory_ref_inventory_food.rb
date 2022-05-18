class AddInventoryRefInventoryFood < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :inventory_food
  end
end
