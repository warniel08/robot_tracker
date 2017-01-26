class Robot < ApplicationRecord
  belongs_to :model
  # belongs_to :manufacturer, through: :model

  validates :designation, :inventory, presence: true

  def inventory_status
    return "Ordered" if self.inventory == false
    return "Under My Control"
  end
end
