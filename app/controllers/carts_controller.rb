class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    @cart = @current_cart
  end
end
