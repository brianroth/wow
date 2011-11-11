module GenderValues
  MALE = 0
  FEMALE = 1
  
  def self.convert(value)
    case value
      when GenderValues::MALE
        return 'Male'
      else
        return 'Female'
    end
  end
end
