class NearestStation < ApplicationRecord
  belongs_to :building, inverse_of: :nearest_stations

  validates :line,        presence: true
  validates :name,        presence: true
  validates :minute_walk, presence: true, numericality: {only_integer: true, greater_than: 0}
end
