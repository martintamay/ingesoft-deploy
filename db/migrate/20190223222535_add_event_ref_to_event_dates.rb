class AddEventRefToEventDates < ActiveRecord::Migration[5.0]
  def change
    add_reference :event_dates, :event, foreign_key: true
  end
end
