class AddFacebookOmniauthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :f_provider, :string
    add_column :users, :f_uid, :string
    add_column :users, :f_name, :string
    add_column :users, :f_email, :string
  end
end
