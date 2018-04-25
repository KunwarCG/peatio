class String
  # Similar to how ActiveRecord does. See lib/active_record/type/decimal.rb
  def to_d
    BigDecimal(self)
  rescue ArgumentError
    BigDecimal(0)
  end
end
