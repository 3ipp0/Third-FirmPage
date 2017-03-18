class AddDescriptionToFewDaysMeeting < ActiveRecord::Migration[5.0]
  def change
  	 add_column :few_days_meetings, :description, :text
  end
end
