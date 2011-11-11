class Character < ActiveRecord::Base
  belongs_to :realm
  belongs_to :guild
end
