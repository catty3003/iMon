class CreateCreativitycards < ActiveRecord::Migration
  def change
    create_table :creativitycards do |t|
      t.text :suggestion
      t.integer :idea_id
      t.integer :project_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
