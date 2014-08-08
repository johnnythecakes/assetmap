class Inventory
  include Mongoid::Document
  field :user_id, type: String
  field :product_id, type: String
  field :quantity, type: Float
  field :category_name, type: String

  belongs_to :user
  has_many :products
  #has_many :categories
  #has_many :subcategories
  #has_many :makes
end
