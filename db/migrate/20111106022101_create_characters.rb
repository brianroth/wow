class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :race
      t.integer :gender
      t.integer :level
      t.integer :achievement_points
      t.integer :class_id
      t.string :thumbnail
      t.integer :last_activity

      t.timestamps
    end
  end
end
