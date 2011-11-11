class RealmsRefresher
  @queue = :realms_queue
  
  def self.perform
    realms = WowCommunityApi::Realm.find_all
    
    realms.each do |r|
      puts("Requesting information for #{r.slug}")
      
      realm = Realm.find_by_slug(r.slug)
      
      realm = Realm.new unless realm
      
      realm.name = r.name
      realm.slug = r.slug
      realm.realm_type = r.type
      realm.population = r.population
      realm.battlegroup = r.battlegroup
      
      realm.save
    end
  end
end