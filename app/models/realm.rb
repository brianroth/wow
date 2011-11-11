class Realm < ActiveRecord::Base
  has_many :characters
  has_many :guilds
end
