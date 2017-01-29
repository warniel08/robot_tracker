module MoneyConverterHelper
  def double_the_dollar(amount)
    string_amount = amount.sub(/^[\D]/, '').to_f
    string_amount = ('%.2f' % (string_amount * 2))
    "$#{string_amount}"
  end

  def convert_to_stripe_price(amount)
    string_amount = double_the_dollar(amount)
    string_amount.gsub!(/\W+/, '').to_i
  end
end
