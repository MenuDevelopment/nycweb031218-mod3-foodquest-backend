class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :json, :have_visited, :want_to_visit
  has_one :user
end
