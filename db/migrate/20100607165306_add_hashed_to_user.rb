class AddHashedToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :hashed_password, :string
    add_column :users, :salt, :string
    rename_column :users, :username, :login
  end

  def self.down 
    remove_column :users, :hashed_password
    remove_column :users, :salt
    rename_column :users, :login, :username
  end
end
