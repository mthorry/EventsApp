class RemoveDateIdColumnFromEventsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :date_id
  end
end
