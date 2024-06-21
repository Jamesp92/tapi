class ArchivesController < ApplicationController
  before_action :authorized
  
  def index
    @archives = Archive.all
    render :index
  end

end