class CashRegister
attr_accessor :total, :discount,
attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

def items=(items)
  @items = []
end

  def add_item(title, price, optional = 1)
    optional.times {@items << title}
    @total = @total + (price * optional)
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (1.to_f - (@discount.to_f / 100))
     "After the discount, the total comes to $#{@total.to_i}."
    end
  end

end
