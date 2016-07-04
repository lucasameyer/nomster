class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3, too_short: "Must be at least three characters"}
  validates :address, presence: true
  validates :description, presence: true
end
