class EventSerializer < ActiveModel::Serializer
  attributes :id, :includes_food, :include_drinks, :active, :name, :description

  has_many :registrations
end
