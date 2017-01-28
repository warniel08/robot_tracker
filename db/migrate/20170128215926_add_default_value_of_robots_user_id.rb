class AddDefaultValueOfRobotsUserId < ActiveRecord::Migration[5.0]
  def change
    change_column :robots, :user_id, :integer, default: 0
  end
end
