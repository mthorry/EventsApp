class Event < ApplicationRecord
  belongs_to :location
  belongs_to :the_date

  # belongs_to :host, class_name: 'sUser'

  has_many :category_events
  has_many :categories, through: :category_events

  has_many :user_events
  has_many :users, through: :user_events


# 2017-08-22 15:17:19
  def self.formatdt(param)
    "#{param[:year]}-#{param[:month]}-#{param[:day]} #{param[:hour]}:#{param[:minute]}:00"

  end
end
