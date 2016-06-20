class ProductsController < ApplicationController
  def show
    @product = Product.find_by(:product_code => params[:product_code], :status => 0)
    raise ActiveRecord::RecordNotFound if @product.nil? || @product.category.status != 0
  end
end
