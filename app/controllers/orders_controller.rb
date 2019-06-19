class OrdersController < ApplicationController
  before_action :authenticate_user!
  authorize_resource

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(product: @product, user: current_user)
    @order.save
      respond_to do |format|
        format.js
        format.html { redirect_to orders_path, notice: 'Product was successfully destroyed.' }
        format.json { head :no_content }
      end
  end

  def index
    @orders = current_user.orders
    @cont = []
    @orders.each do |count|
    @cont << count if count.payed == false
    end
  end

  def destroy
    @orders = Order.find(params[:id])
    @orders.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to orders_path, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def clearcart
    @orders = current_user.orders
    @orders.clear
    respond_to do |format|
      format.js
      format.html { redirect_to orders_path, notice: 'Carro Limpio!.' }
      format.json { head :no_content }
    end
  end

end
