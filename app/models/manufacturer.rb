require 'httparty'
require 'json'

class Manufacturer < ApplicationRecord
  has_many :models
  has_many :robots, through: :models

  validates :name, presence: true

  def self.generate_manufacturer_names
    response = HTTParty.get("http://jordankamin.com/robots_api/robots.json")
    data = JSON.parse(response.body)
    manufacturers = data["manufacturers"]
    
    manufacturers.each do |manufacturer|
      Manufacturer.find_or_create_by(name: manufacturer["name"])
    end
  end
end
