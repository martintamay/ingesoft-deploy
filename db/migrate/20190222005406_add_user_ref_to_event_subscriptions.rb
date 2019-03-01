class AddUserRefToEventSubscriptions < ActiveRecord::Migration[5.0]
  def change
    add_reference :event_subscriptions, :user, foreign_key: true
  end
end
