class ChangeDataTypeInFlights < ActiveRecord::Migration
  def change
    change_column :flights, :departing_airport_id, "integer USING CAST(departing_airport_id AS integer)"
    change_column :flights, :arriving_airport_id, "integer USING CAST(arriving_airport_id AS integer)"
  end
end
