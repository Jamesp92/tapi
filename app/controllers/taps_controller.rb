class TapsController < ApplicationController

  def index
    @taps = Tap.all.order(:tap_number)
    render :all_taps
  end

  def show
    @tap = Tap.find(params[:id])
    @tap_kegs = InventoryKeg.where("taps_id = ?", "#{params[:id]}")
    @tap_suggest = InventoryKeg.where("style = ?", "#{@tap.tap_style}").where(taps_id: nil).order(date_received: :desc)
    render :show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def kick
    if Tap.kick(params)
      flash[:notice] = "Keg has been added to the Archive."
      redirect_to taps_path
    else
      flash[:alert] = "Something went wrong."
      render :show, status: :unprocessable_entity
    end
  end
end