class CreateTheDates < ActiveRecord::Migration[5.1]
  def change
    create_table :the_dates do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
