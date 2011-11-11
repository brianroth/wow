class AddGuildIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :guild_id, :integer
  end
end
