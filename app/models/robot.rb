class Robot < ApplicationRecord
  validates :designation, :inventory, presence: true
end
