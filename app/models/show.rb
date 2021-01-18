class Show < ActiveRecord::Base
  has_many :characters
  has_many :actor, through: :character
end