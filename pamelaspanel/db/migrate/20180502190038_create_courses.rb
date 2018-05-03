class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.string :type
    	t.integer :total_hrs
    end
  end
end
