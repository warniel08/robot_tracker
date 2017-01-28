class Robot < ApplicationRecord
  belongs_to :model
  belongs_to :user

  validates :designation, presence: true
  validates :inventory, inclusion: { in: [true, false]}

  def inventory_status
    return "Ordered" if self.inventory == false
    return "Under my control"
  end
end
