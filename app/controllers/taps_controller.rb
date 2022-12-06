class TapsController < ApplicationController

  def index
    @taps = Tap.all
    render :all_taps
  end

  def show
    @tap = Tap.find(params[:id])
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