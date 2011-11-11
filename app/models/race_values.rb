module RaceValues
  HUMAN = 1
  ORC = 2
  DWARF = 3
  NIGHT_ELF = 4
  FORSAKEN = 5
  TAUREN = 6
  GNOME = 7
  TROLL = 8
  GOBLIN = 9
  BLOOD_ELF = 10
  DRAENEI = 11
  WORGEN = 22
  
  def self.convert(value)
    case value
      when RaceValues::HUMAN
        return 'Human'
      when RaceValues::ORC
        return 'Orc'
      when RaceValues::DWARF
        return 'Dwarf'
      when RaceValues::TROLL
        return 'Troll'
      when RaceValues::BLOOD_ELF
        return 'Blood Elf'
      when RaceValues::NIGHT_ELF
        return 'Night Elf'
      when RaceValues::GNOME
        return 'Gnome'
      when RaceValues::GOBLIN
        return 'Goblin'
      when RaceValues::FORSAKEN
        return 'Forsaken'
      when RaceValues::TAUREN
        return 'Tauren'
      when RaceValues::DRAENEI
        return 'Draenei'
      when RaceValues::WORGEN
        return 'Worgen'
      else
        return value
    end
  end
end
