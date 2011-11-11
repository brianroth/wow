module ClassValues
  WARRIOR = 1
  PALADIN = 2
  HUNTER = 3
  ROGUE = 4
  PRIEST = 5
  DEATH_KNIGHT = 6
  SHAMAN = 7
  MAGE = 8
  WARLOCK = 9
  DRUID = 11
  
  def self.convert(value)
    case value
    when ClassValues::WARRIOR
      return 'Warrior'
      when ClassValues::SHAMAN
        return 'Shaman'
      when ClassValues::PALADIN
        return 'Paladin'
      when ClassValues::ROGUE
        return 'Rogue'
      when ClassValues::MAGE
        return 'Mage'
      when ClassValues::PRIEST
        return 'Priest'
      when ClassValues::DEATH_KNIGHT
        return 'Death Knight'
      when ClassValues::HUNTER
        return 'Hunter'
      when ClassValues::DRUID
        return 'Druid'
      when ClassValues::WARLOCK
        return 'Warlock'
      else
        return value
    end
  end
end
