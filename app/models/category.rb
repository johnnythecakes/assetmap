class Category
  include Mongoid::Document
  field :category_name, type: String

  has_many :products
end
