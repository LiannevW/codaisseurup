class Event < ApplicationRecord
  belongs_to :user

validates :name, presence:true
validates :discription, precence:true, length: { maximum: 500}
end
