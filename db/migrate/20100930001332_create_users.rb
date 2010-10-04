class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :null => false
      t.binary :password_hash, :null => false
      t.string :email, :null => false
      t.integer :status, :default => 1
      t.text :alert
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
