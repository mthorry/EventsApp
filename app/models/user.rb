class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  # has_many :events, foreign_key: 'host_id'

  belongs_to :location
  has_secure_password

  def add_event(event)
    if !self.events.include?(event)
      self.events << event
    end
  end

  def delete_event(event)
    if self.events.include?(event)
      self.events.delete(event)
    end
  end

end
