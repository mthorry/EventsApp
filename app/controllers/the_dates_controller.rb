class TheDatesController < ApplicationController

  def index
    @dates = TheDate.all
  end

  def show
    @date = TheDate.find(params[:id])
  end


end
