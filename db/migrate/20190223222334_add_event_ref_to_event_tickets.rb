class AddEventRefToEventTickets < ActiveRecord::Migration[5.0]
  def change
    add_reference :event_tickets, :event, foreign_key: true
  end
end
