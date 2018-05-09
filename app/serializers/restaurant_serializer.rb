class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :hours, :location, :have_visited, :want_to_visit
  has_one :user
end
