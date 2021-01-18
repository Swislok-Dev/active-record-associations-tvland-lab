class Show < ActiveRecord::Base
  has_many :characters
  has_many :actor, through: :character
  belongs_to :network

  def actors_list
    self.characters.map do |i|
      "#{i.actor.first_name} #{i.actor.last_name}"
    end
  end
end