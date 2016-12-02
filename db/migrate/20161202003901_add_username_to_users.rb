class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change # Here I translate everything inside this method to SQL code and modify the database
  add_column :users, :username, :string #Add new column to table "users", called "username" of type "string"
  add_index :users, :username, unique: true #Index usernames for quick lookup. Second, ensure usernames are always unique
  end
end
