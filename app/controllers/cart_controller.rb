class CartController < ApplicationController
  def add_to_cart
    line_item = LineItem.create(product_id: params[:product_id], quantity: params[:quantity])
    line_item.update(line_item_total: (line_item.quantity * line_item.product.price))

    redirect_back(fallback_location: root_path)
    # line_item = LineItem.new
    # line_item.product_id = params[:product_id]
    # line_item.quantity = params[:quantity]
    # line_item.line_item_total = line_item.product.price * line_item.quantity
    # line_item.save
  end

  def view_order
    @line_items = LineItem.all
  end

  def delete_from_cart
    line_item = LineItem.find(params[:line_item_id])
    line_item.destroy

    redirect_back(fallback_location: root_path)
  end

  def checkout
  end
end
