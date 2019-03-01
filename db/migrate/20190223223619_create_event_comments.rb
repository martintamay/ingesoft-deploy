class CreateEventComments < ActiveRecord::Migration[5.0]
  def change
    create_table :event_comments do |t|
      t.string :comentario

      t.timestamps
    end
  end
end
