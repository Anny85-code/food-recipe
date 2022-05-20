class AddFoodRefInventory < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :food
  end
end
