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
end