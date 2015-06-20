class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
    	t.string :name
    	t.string :last_name
    	t.string :email
      t.string :password_digest
    	t.string :education
    	t.string :position
    	t.boolean :cofounder 
      t.boolean :employee

      t.timestamps null: false
    end
  end
end
