class CreateAirportsFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :airports_flights do |t|
      t.references :airport, foreign_key: true
      t.references :flight, foreign_key: true
    end
  end
end
