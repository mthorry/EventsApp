class Category < ApplicationRecord
  has_many :category_events
  has_many :events, through: :category_events
end
