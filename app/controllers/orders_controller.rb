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
    redirect_to orders_path if @orders.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
