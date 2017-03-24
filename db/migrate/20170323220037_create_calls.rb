class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
    	t.string :full_name
    	t.string :phone_number
      	t.text   :body
      	
      t.timestamps
    end
  end
end
