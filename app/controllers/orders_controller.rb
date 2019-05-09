class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(product: @product, user: current_user)
    if @order.save
      redirect_to products_path, notice: 'Producto en Orden'
    else
      redirect_to products_path, alert: 'Producto no Ingresado'
    end
  end

  def index
    @orders = current_user.orders
  end

  def destroy
    @orders = Order.find(params[:id])
    @orders.destroy
    if @orders.destroy
      redirect_to orders_path, notice: 'Producto eliminado de tu carro de compras'
    else
      redirect_to orders_path, alert: 'Producto no eliminado'
    end
  end
end
