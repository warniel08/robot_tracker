class Model < ApplicationRecord
  belongs_to :manufacturer

  validates :model_designation, presence: true
end
