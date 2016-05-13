class SportEvent < ApplicationRecord
  include ActionController::Serialization

  has_many :game_bets

  def info
    puts name + ' @ ' + location
  end

  def nations
    nations = []
    nations_ids.each do |n|
      nat = Nation.find(n)
      nations << nat
    end
    nations
  end
end
