class AddNullFalseToEachColumnInRobots < ActiveRecord::Migration[5.0]
  def change
    change_column_null :robots, :designation, null: false
    change_column_null :robots, :inventory, null: false
    change_column_null :robots, :model_id, null: false

  end
end
