class TheDate < ApplicationRecord
  has_many :events

  def self.format_date(datetime)
    datetime.strftime("%A, %B %d, %Y")
  end

 def self.format_time(datetime)
    datetime.strftime("%I:%M %p")
  end

end

# <%= event.the_date.date_time.strftime("%A, %B %d, %Y") %> at <%= event.the_date.date_time.strftime("%I:%M %p") %>