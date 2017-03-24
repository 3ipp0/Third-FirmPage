class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
    	t.string :name
    	t.string :email
    	t.string :subject
    	t.string :website
      	t.text   :comment

      t.timestamps
    end
  end
end
