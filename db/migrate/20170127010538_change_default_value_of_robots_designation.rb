class ChangeDefaultValueOfRobotsDesignation < ActiveRecord::Migration[5.0]
  def change
    change_column :robots, :designation, :string, default: "Unnamed"
  end
end
