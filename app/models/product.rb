class Product
  include Mongoid::Document
  field :product_name, type: String
  field :product_purchase_price, type: String
  field :product_estimate_price, type: String
  field :product_category_id, type: String
  field :product_make, type: String
end
