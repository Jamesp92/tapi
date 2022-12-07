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

def edit
  @inv_keg = InventoryKeg.find(params[:id])
  render :edit
end

def update
  @inv_keg = InventoryKeg.find(params[:id])
  if @inv_keg.update(keg_params)
    flash[:notice] = "Keg has been updated."
    redirect_to inventory_keg_path(@inv_keg.id)
  else
    flash[:alert] = "Something went wrong :/"
    @inv_keg = InventoryKeg.find(params[:id])
    render :edit, status: :unprocessable_entity
  end
end

private
  def inv_keg_params
  def keg_params
    params.require(:inventory_keg).permit(:style, :brand, :brewery, :date_received, :priority, :abv, :price, :serving_size, :serving_price, :keg_size)
  end

end