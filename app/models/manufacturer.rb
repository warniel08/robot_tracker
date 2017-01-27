require 'httparty'
require 'json'

class Manufacturer < ApplicationRecord
  has_many :models
  has_many :robots, through: :models

  validates :name, presence: true

  response = HTTParty.get("http://jordankamin.com/robots_api/robots.json")
  data = JSON.parse(response.body)
  p data
end
