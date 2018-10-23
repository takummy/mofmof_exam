class Building < ApplicationRecord
  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank

  validates :name,    presence: true
  validates :rent,    presence: true,         numericality: {only_integer: true, greater_than: 1}
  validates :address, presence: true,         length: {maximum: 50}
  validates :age,     presence: true,         numericality: {only_integer: true, greater_than: 1}
  validates :notes,   length: {maximum: 255}, allow_blank: true
end
