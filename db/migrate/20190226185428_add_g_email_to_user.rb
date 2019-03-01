class AddGEmailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :g_email, :string
  end
end
