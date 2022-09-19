class Flat < ApplicationRecord
  validates :name, :description, :address, :url_image, :price_per_night, :number_of_guests, presence: true
  validates :description, length: { minimum: 10 }

  validates :url_image, format: { with: /http(s)?:/ }
  
  validates :description, length: { minimum: 10 }

  validates :price_per_night, inclusion: { in: (10..150) }

  validates :number_of_guests, inclusion: {in: (1..10)}
end
