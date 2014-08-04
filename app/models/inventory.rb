class Inventory
  include Mongoid::Document
  field :user_id, type: String
  field :product_id, type: String
  field :quantity, type: Float
  field :category_name, type: String
end
