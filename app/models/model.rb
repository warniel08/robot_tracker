class Model < ApplicationRecord
  belongs_to :manufacturer
  has_many :robots

  validates :model_designation, presence: true
end
