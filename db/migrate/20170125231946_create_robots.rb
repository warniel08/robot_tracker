class CreateRobots < ActiveRecord::Migration[5.0]
  def change
    create_table :robots do |t|
      t.string :designation
      t.boolean :inventory
      t.integer :model_id

      t.timestamps
    end
  end
end
