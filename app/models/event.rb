class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :registrations, dependent: :destroy
  has_many :guest, through: :registrations, source: :user

attribute :price, :decimal, default: 0.0
attribute :includes_food, :boolean, default: false
attribute :include_drinks, :boolean, default: false
attribute :active, :boolean, default: true

validates :name, presence: true
validates :description, presence: true, length: { maximum: 500}
# validates :starts_at, presence: true
# validates :ends_at, presence: true


#assignment +1 before_validation :

end
