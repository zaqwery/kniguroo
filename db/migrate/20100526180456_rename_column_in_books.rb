class RenameColumnInBooks < ActiveRecord::Migration
  def self.up 
    rename_column :books, :name, :title
  end

  def self.down
    rename_column :books, :title, :name 
  end
end
