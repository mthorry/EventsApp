class AddTheDateIdColumnToEventsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :the_date_id, :integer
  end
end
