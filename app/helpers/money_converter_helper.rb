module MoneyConverterHelper
  def double_the_dollar(amount)
    #input is a string and output is a string
    string_amount = amount.sub(/^[\D]/, '').to_d
    string_amount = string_amount * 2
    "$#{string_amount}"
  end
end
