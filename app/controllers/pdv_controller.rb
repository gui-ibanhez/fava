class PdvController < ApplicationController
  def index
  end

  def get_products
    @product = Product.find(params['product_id'])
    render :get_items
  end

  def create_order
    byebug
  end
end
