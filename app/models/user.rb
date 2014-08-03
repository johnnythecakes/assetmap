class User
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :password, type: String
  field :address, type: String
  field :city, type: String
  field :state, type: String
  field :postal_code, type: String
  field :email_address, type: String
end