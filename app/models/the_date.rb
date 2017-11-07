class TheDate < ApplicationRecord
  has_many :events

  def self.format_date(datetime)
    datetime.strftime("%A, %B %d, %Y")
  end

  def self.format_time(datetime)
    datetime.strftime("%I:%M %p")
  end

  def self.specific_date(specific_date)
    TheDate.all.select do |datetime|
      datetime.date_time.to_date == specific_date
    end
  end

  def self.today
   today = TheDate.all.find {|date| date.date_time.strftime("%A, %B %d, %Y") == Time.now.strftime("%A, %B %d, %Y")}
    if today
      today.id
    else
      TheDate.all.first.id
    end
  end

end
