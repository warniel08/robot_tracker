class ChangePriceTypeFromDecToStringOnModels < ActiveRecord::Migration[5.0]
  def change
    change_table :models do |t|
      t.change :price, :string
    end
  end
end
