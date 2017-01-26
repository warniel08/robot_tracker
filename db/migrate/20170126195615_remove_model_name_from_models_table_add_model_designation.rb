class RemoveModelNameFromModelsTableAddModelDesignation < ActiveRecord::Migration[5.0]
  def change
    remove_column :models, :model_name, :string
    add_column :models, :model_designation, :string
  end
end
