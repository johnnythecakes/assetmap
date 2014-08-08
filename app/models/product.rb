class Product
  include Mongoid::Document
  field :product_name, type: String
  field :product_purchase_price, type: String
  field :product_estimate_price, type: String
  field :product_category_name, type: String
  field :product_make, type: String
  field :product_warranty, type: Boolean
  field :product_warranty_length, type: Float

  #belongs_to :user
  belongs_to :inventory
  # has_many :category
  # has_many :subcategory
  # has_many :make
end
