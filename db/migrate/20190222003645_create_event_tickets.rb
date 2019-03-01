class CreateEventTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :event_tickets do |t|
      t.string :acceso
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
