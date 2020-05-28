class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :origin
      t.references :destination
      t.references :booking
      t.datetime :depart_time
      t.integer :duration
      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :origin_id
    add_foreign_key :flights, :airports, column: :destination_id
  end
end
