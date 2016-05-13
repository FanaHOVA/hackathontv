class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include ActionController::Serialization

  belongs_to :nation
  has_many :game_bets
end
