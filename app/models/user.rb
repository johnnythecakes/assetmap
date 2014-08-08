class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :first_name, type: String
  field :last_name, type: String
  field :password_digest, type: String
  field :address, type: String
  field :city, type: String
  field :state, type: String
  field :postal_code, type: String
  field :email_address, type: String
  field :is_active, type: Mongoid::Boolean, default: true

  has_secure_password

  has_many :inventories
  # has_many :categories
  # has_many :subcategories
  # has_many :makes
end
