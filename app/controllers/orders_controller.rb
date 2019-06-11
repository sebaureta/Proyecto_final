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
end
