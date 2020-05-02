class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :from_airport, foreign_key: true
      t.references :to_airport, foreign_key: true
      t.datetime :depart_time
      t.integer :duration

      t.timestamps
    end
  end
end
