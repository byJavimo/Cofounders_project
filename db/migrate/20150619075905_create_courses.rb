class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :name
    	t.string :image
    	t.text :description
    	t.datetime :date
    	t.float :price
    	t.string :url

      t.timestamps null: false
    end
  end
end
