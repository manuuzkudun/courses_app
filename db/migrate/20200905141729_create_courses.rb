class CreateCourses < ActiveRecord::Migration[6.0]
  def self.up
    create_table :courses do |t|
      t.string :title, null: false
      t.integer :professor_id, null: false
      t.integer :votes, default: 0
 
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
