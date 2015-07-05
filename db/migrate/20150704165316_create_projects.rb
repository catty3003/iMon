class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name
      t.date :deadline
      t.boolean :done
      t.float :duration
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
