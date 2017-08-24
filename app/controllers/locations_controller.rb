class LocationsController < ApplicationController

  def index
    @locations = Location.all

  end

  def show
    @location = Location.find(params[:id])
    events = @location.events.joins(:the_date).order("the_dates.date_time ASC")
    @events = events.paginate(:page => params[:page], per_page: 18)

  end
end
