class InventoryKegsController < ApplicationController
  before_action :authorized
  
def index
  @inv_kegs = InventoryKeg.all
  render :index
end

def new
  @inv_keg = InventoryKeg.new
  render :new
end

def show 
  @inv_keg = InventoryKeg.find(params[:id])
  render :show
end

def create
  @inv_keg = InventoryKeg.new(keg_params)
  if @product.save
    flash[:notice] = "Wine has been added to the List."
    redirect_to products_path
  else
    flash[:alert] = "Something went wrong :/"
    render :new, status: :unprocessable_entity
  end
end



private
  def product_params
    params.require(:inventory_keg).permit(:style, :brand, :brewery, :date_received, :priority, :abv, :price, :serving_size, :serving_price, :keg_size)
  end

end