class Event < ApplicationRecord
  validates :title, :description, :price, :date, presence: true
  validates :title, length: { minimum: 2, maximum: 50 }
  validates :description, length: { minimum: 10, maximum: 200 }
  # validates :price, numericality: true
  validates :price, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 200
  }
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end
end
