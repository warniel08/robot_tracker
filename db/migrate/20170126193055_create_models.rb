class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :model_name
      t.decimal :height
      t.decimal :weight
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
