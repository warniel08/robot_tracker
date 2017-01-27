class AddPriceColumnToModelsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :price, :decimal
  end
end
