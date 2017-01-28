class AddCardNumberColumnToPaymentsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :cardNumber, :integer
    add_column :payments, :cardCVV, :integer
    add_column :payments, :cardExpiryMonth, :integer
    add_column :payments, :cardExpiryYear, :integer
  end
end
