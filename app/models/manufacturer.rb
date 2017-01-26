class Manufacturer < ApplicationRecord
  has_many :models
  # has_many :robots, through: :models

  validates :name, presence: true
end
