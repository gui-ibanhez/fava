class PdvController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @customers = Customer.select(:id, :name).order(:name).map { |e| [e.name, e.id]})
    @origins = Origin.select(:id, :name).order(:name).map { |e| [e.name, e.id]}
    @products = Product.select(:nome, :id).order(:name).map { |e| [e.nome, e.id]}
  end

  def get_products
    @product = Product.find(params['product_id'])
    render :get_items
  end

  def create_order
    order = Order.create(order_params)
    order_items_params.each do |e|
      e[:order_id] = order.id
      OrderItem.create(e)
    end
  end

  private
  def order_params
    params.require(:order).permit(:customer_id, :value, :payment, :origin, :request_ahead)
  end

  def order_items_params
    params.require('order_items').map do |e|
      e.permit(:product_id, :quantity, :value)
    end
  end
end
