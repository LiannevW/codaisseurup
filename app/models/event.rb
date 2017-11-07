class Event < ApplicationRecord
  belongs_to :user

attribute :price, :decimal, default: 0
attribute :includes_food, :boolean, default: false
attribute :include_drinks, :boolean, default: false
attribute :active, :boolean, default: true

validates :name, presence: true
validates :discription, presence: true, length: { maximum: 500}
validates :starts_at, presence: true
validates :ends_at, presence: true


#assignment +1 before_validation :

end