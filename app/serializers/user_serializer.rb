class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :email
  has_many :restaurants
end
