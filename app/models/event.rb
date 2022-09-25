class Event < ApplicationRecord
  validates :title, :description, :price, :date, presence: true
  validates :title, length: { minimum: 2, maximum: 50 }
  validates :description, length: { minimum: 10, maximum: 200 }
end
