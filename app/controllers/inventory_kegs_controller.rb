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
  @inv_keg = InventoryKeg.create!(inv_keg_params)
  if @inv_keg.save
    flash[:notice] = "Wine has been added to the List."
    render :index
  else
    flash[:alert] = "Something went wrong :/"
    render :new, status: :unprocessable_entity
  end
end



private
  def inv_keg_params
    params.require(:inventory_keg).permit(:style, :brand, :brewery, :date_received, :priority, :abv, :price, :serving_size, :serving_price, :keg_size)
  end

end