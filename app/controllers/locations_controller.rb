class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @events = @location.events.joins(:the_date).order("the_dates.date_time ASC")
  end
end
