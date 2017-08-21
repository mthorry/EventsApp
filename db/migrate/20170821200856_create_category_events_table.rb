class CreateCategoryEventsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :category_events do |t|
      t.integer :category_id
      t.integer :event_id
    end
  end
end
