class CreateGuilds < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.string :name
      t.integer :realm_id
      t.integer :level
      t.integer :side
      t.timestamps
    end
  end
end
