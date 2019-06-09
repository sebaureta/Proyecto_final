# prohibir acceder a rutas que no corresponden
class AdminsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all.page(params[:page])
    authorize! :index, User
  end

  def destroy
    authorize! :destroy, Product
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to admins_path, notice: 'El Producto ha sido eliminado de tu tienda!' }
      format.json { head :no_content }
    end
  end

  def administration
    @products = Product.all.page(params[:page])
  end
end
