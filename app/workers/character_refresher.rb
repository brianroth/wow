class CharacterRefresher
  @queue = :character_queue
  
  def self.perform(name, realm_id)
    puts("Refreshing character name=#{name}, realm_id=#{realm_id}")
      
    realm = Realm.find(realm_id)
    
    c = WowCommunityApi::Character.find_by_realm_and_name(realm.slug, name, :guild)

    if c
      puts("Character found, c.guild=#{c.guild}")

      if c.guild
        guild = find_guild(c.guild.name, realm)
      end

      character = realm.characters.find_by_name(c.name)

      character = Character.new unless character

      character.name = c.name
      character.race = c.race
      character.gender = c.gender
      character.level = c.level
      character.class_id = c.class_id
      character.thumbnail = c.thumbnail
      character.achievement_points = c.achievementPoints
      character.last_activity = c.lastModified
      character.realm = realm
      character.guild = guild
      character.save!
    else
      puts("Character not found name=#{name}, realm_id=#{realm_id}")
    end
  end
  
  def self.find_guild(name, realm)
    g = WowCommunityApi::Guild.find_by_realm_and_name(realm.slug, name)
    
    guild = realm.guilds.find_by_name(name)
    
    guild = Guild.new unless guild
    
    guild.name = g.name
    guild.realm = realm
    guild.level = g.level
    guild.side = g.side
    guild.save
    guild
  end
end