class ChangeEventsTable < ActiveRecord::Migration[5.1]
  def up
    change_column :events, :description, :string, :default => "No description available."
    change_column :events, :img, :string, :default => "http://lorempixel.com/400/300/nightlife/"
    change_column :events, :venue, :string, :default => "No venue available."
    change_column :events, :address, :string, :default => "No address available."
  end
end
