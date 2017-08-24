class Event < ApplicationRecord
  belongs_to :location
  belongs_to :the_date

  # belongs_to :host, class_name: 'sUser'

  has_many :category_events
  has_many :categories, through: :category_events

  has_many :user_events
  has_many :users, through: :user_events

  scope :most_recent, -> {joins(:the_date).order("the_dates.date_time ASC")}

  # validates :name, :address, :description, :the_date_id, :location_id, presence: true


# 2017-08-22 15:17:19
  def self.formatdt(param)
    "#{param[:year]}-#{param[:month]}-#{param[:day]} #{param[:hour]}:#{param[:minute]}:00"
  end

  def self.ordered_dates(dates_params)
    event_names = []
      dates_params.each do |date_arr|
        if !date_arr.events.empty?
          date_arr.events.map do |event|
           event_names << event.name
        end
      end
    end
    event_names
  end

end
