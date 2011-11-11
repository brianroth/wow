class AddRealmToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :realm_id, :integer
  end
end
