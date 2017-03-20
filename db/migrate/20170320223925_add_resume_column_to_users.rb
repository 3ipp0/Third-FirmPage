class AddResumeColumnToUsers < ActiveRecord::Migration[5.0]
    def up
   add_attachment :users, :resume
 end

 def down
   remove_attachment :users, :resume
 end
end
