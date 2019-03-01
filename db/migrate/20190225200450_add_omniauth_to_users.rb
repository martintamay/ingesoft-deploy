class AddOmniauthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :g_provider, :string
    add_column :users, :g_uid, :string
    add_column :users, :g_token, :string
    add_column :users, :g_expires_at, :integer
    add_column :users, :g_expires, :boolean
    add_column :users, :g_refresh_token, :string
  end
end
