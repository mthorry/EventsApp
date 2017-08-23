class Location < ApplicationRecord
  has_many :users
  has_many :events

  scope :most_recent, -> {joins(:the_date).order("the_dates.date_time ASC")}

end
