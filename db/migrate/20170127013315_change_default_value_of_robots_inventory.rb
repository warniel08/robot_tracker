class ChangeDefaultValueOfRobotsInventory < ActiveRecord::Migration[5.0]
  def change
    change_column :robots, :inventory, :boolean, default: false
  end
end
