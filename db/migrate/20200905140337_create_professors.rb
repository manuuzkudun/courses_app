class CreateProfessors < ActiveRecord::Migration[6.0]
  def self.up
    create_table :professors do |t|
      t.string :email, null: false
      t.integer :votes, default: 0
 
      t.timestamps
    end
  end

  def self.down
    drop_table :professors
  end
end
