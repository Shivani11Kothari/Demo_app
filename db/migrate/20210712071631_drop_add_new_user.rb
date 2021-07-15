class DropAddNewUser < ActiveRecord::Migration[6.0]
  def change
    drop_table :add_new_users
  end
end
