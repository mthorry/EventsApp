class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def index
    # @dates = TheDate.order(:date_time)
    # @events = Event.ordered_dates(@dates)
    # @events = Event.order(:the_date_id)
    if params[:term]
      search = params[:term].downcase
      @events = Event.all.select do |event|
      event.name.downcase.include?(search)
    end
    else
      @events = Event.most_recent
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    dt = Event.formatdt(params[:date_time])
    event_date = TheDate.find_or_create_by(date_time: dt)
    @event.the_date_id = event_date.id
    if @event.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render 'edit'
    end
  end

  def addevent
    @event = Event.find(params[:id])
    current_user.add_event(@event)
    current_user.save
    redirect_to user_path(current_user)
  end


  private

    def event_params
      params.require(:event).permit(
        :name,
        :address,
        :description,
        :location_id,
        :date_time,
        :the_date_id,
        :category
      )
    end
end
