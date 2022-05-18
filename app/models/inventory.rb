class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventoryfoods, dependent: :destroy
end
