class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :fullname
      t.string :city
      t.string :country
      t.string :email
      t.string :skype
      t.integer :icq
      t.integer :mobile

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
