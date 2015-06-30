class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :name
    	t.string :position
      t.integer :user_id
    	t.boolean :cofounder
      t.boolean :employee

      t.timestamps null: false
    end
  end
end
