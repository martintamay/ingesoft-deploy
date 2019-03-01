class CreateEventTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :event_types do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
