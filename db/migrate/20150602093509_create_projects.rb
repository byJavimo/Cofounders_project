class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
		  t.string :project_image
    	t.string :project_name
    	t.string :project_position
    	t.string :project_skills
    	t.boolean :project_cofounder
      t.integer :user_id
      t.boolean :project_employee

      t.timestamps null: false
    end
  end
end
