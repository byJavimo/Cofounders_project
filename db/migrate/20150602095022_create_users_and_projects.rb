class CreateUsersAndProjects < ActiveRecord::Migration
  def change
    create_table :users_and_projects do |t|
      t.integer :user_id
      t.integer :project_id
    end
  end
end
