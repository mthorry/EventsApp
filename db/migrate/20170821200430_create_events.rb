class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :location_id
      t.integer :the_date_id

      t.timestamps
    end
  end
end
