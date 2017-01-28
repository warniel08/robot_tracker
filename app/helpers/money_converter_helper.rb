module MoneyConverterHelper
  def double_the_dollar(amount)
    string_amount = amount.sub(/^[\D]/, '').to_f
    string_amount = ('%.2f' % (string_amount * 2))
    "$#{string_amount}"
  end
end
