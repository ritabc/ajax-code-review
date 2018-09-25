module CartHelper
  def cart_items
    cart_quantity = 0
    @order_items.each do |oi|
      cart_quantity += oi.quantity
    end
    cart_quantity
  end
end
