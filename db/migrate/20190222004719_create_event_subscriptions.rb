class CreateEventSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :event_subscriptions do |t|

      t.timestamps
    end
  end
end
