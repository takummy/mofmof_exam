class NearestStation < ApplicationRecord
  belongs_to :building

  validates :line,        presence: true
  validates :name,        presence: true
  validates :minute_walk, presence: true
end
