require_relative "order"

class Restaurant



  def initialize(menu:, order: nil)
    @menu = menu
    @order = order || Order.new
  end

  def print_menu
    menu.print_m
  end

  def place_order(dishes)
    dishes.each do |dish, qty|
      order.add(dish, qty)
    end

  end

private

  attr_reader :menu, :order



end
