# prohibir acceder a rutas que no corresponden
class AdminsController < ApplicationController
  before_action :authenticate_user!

  def index
    authorize! :index, User
  end
end
