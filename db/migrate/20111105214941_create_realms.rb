class CreateRealms < ActiveRecord::Migration
  def change
    create_table :realms do |t|
      t.string :name
      t.string :realm_type
      t.string :population
      t.string :battlegroup
      t.string :slug

      t.timestamps
    end
  end
end
