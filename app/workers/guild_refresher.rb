class GuildRefresher
  @queue = :guild_queue
  
  def self.perform(name, realm_id)
    puts("name=#{name}, realm_id=#{realm_id}")
      
    realm = Realm.find(realm_id)
    
    g = WowCommunityApi::Guild.find_by_realm_and_name(realm.slug, name, :members)

    return unless g
    
    g.members.each do |c|
      Resque.enqueue(CharacterRefresher, c.character.name, realm.id) if c && c.character
    end
    
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