class AddPhotoColumnToEvent < ActiveRecord::Migration[5.0]
  def up
   add_attachment :few_days_meetings, :photo
 end

 def down
   remove_attachment :few_days_meetings, :photo
 end
end
