class AddNewColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :phone_number, :integer
  	add_column :users, :some_text, :text
  end

  def up
   add_attachment :users, :resume
 end

 def down
   remove_attachment :users, :resume
 end
end
