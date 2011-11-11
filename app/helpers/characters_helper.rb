module CharactersHelper
  def guild_name(character)
    if character.guild
      return character.guild.name
    else
      ""
    end
  end
end
