class PdvController < ApplicationController
  def index
  end

  def get_items
    @product = Product.find(params['product_id'])
    render :get_items
  end
end
