class StorefrontController < ApplicationController

  def all_items
    @products = Product.all
  end

  def items_by_category
    # @category = Category.find(params[:cat_id])
    # products_all = Product.all
    # @products = []
    #
    # products_all.each do |product|
    #   if product.category_id == @category.id
    #     @products.push(product)
    #   end
    # end
    # --- here's the short version: -----
    @products = Product.where(category_id: params[:cat_id])
    @category = Category.find(params[:cat_id])
  end

  def items_by_brand
    @products = Product.where(brand: params[:selected_brand])
    @brand = params[:selected_brand]
  end


end
