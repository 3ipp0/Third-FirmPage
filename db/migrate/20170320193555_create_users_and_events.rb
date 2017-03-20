class CreateUsersAndEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :users_events, id: false do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :few_days_meeting, index: true
    end
  end
end
