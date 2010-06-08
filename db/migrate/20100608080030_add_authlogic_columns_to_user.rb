class AddAuthlogicColumnsToUser < ActiveRecord::Migration
  def self.up
    rename_column :users, :hashed_password, :crypted_password
    rename_column :users, :salt, :password_salt
    add_column :users, :persistence_token, :string
    add_column :users, :login_count, :integer
    add_column :users, :last_request_at, :datetime
    add_column :users, :last_login_at, :datetime
    add_column :users, :current_login_at, :datetime
    add_column :users, :last_login_ip, :string
    add_column :users, :current_login_ip, :string
    add_index :users, :login
    add_index :users, :persistence_token
    add_index :users, :last_request_at 
  end

  def self.down                          
    rename_column :users, :crypted_password, :hashed_password
    rename_column :users, :password_salt, :salt
    remove_column :users, :persistence_token
    remove_column :users, :login_count
    remove_column :users, :last_request_at
    remove_column :users, :last_login_at
    remove_column :users, :current_login_at
    remove_column :users, :last_login_ip
    remove_column :users, :current_login_ip
    remove_index :users, :login
    remove_index :users, :persistence_token
    remove_index :users, :last_request_at
  end
end
