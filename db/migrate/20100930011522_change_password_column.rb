class ChangePasswordColumn < ActiveRecord::Migration
  def self.up
    remove_column :users, :password_hash
    add_column :users, :password_hash, :string
  end

  def self.down
    remove_column :users, :password_hash
    add_column :users, :password_hash, :binary
  end
end
