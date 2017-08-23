class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @events = @category.events.joins(:the_date).order("the_dates.date_time ASC")
  end
end
