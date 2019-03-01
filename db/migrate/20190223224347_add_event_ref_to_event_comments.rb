class AddEventRefToEventComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :event_comments, :event, foreign_key: true
  end
end
