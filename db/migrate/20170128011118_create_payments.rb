class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :payment_id
      t.float :amount
      t.string :customer
      t.string :currency
      t.string :description
      t.boolean :paid

      t.timestamps
    end
  end
end
