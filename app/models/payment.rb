class Payment < ApplicationRecord
  attr_accessor :amount, :currency, :description

  attr_accessor :id, :customer, :paid
end
