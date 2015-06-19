class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :user_image
    	t.string :user_name
    	t.string :user_last_name
    	t.string :user_email
      t.string :password_digest
    	t.string :user_education
    	t.string :user_position
    	t.boolean :user_cofounder 
      t.boolean :user_employee

      t.timestamps null: false
    end
  end
end
