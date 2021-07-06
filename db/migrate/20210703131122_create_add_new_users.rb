class CreateAddNewUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :add_new_users do |t|
      t.column 'first_name', :string, :limit =>25
      t.string 'last_name', :limit =>25
      t.string 'email', :default=>'' ,:null =>false
      t.string 'password', :limit =>25
     

      t.timestamps
    end
  end
end
