class CreateEventDates < ActiveRecord::Migration[5.0]
  def change
    create_table :event_dates do |t|
      t.datetime :fecha_inicio
      t.datetime :fecha_fin

      t.timestamps
    end
  end
end
