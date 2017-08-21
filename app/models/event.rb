class Event < ApplicationRecord
  belongs_to :location
  belongs_to :the_date

  # belongs_to :user ##AS HOST!?

  has_many :category_events
  has_many :categories, through: :category_events

  has_many :user_events
  has_many :users, through: :user_events

end
