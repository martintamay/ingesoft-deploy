class AddEventRefToEventSubscriptions < ActiveRecord::Migration[5.0]
  def change
    add_reference :event_subscriptions, :event, foreign_key: true
  end
end
