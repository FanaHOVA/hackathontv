class Nation < ApplicationRecord
  include ActionController::Serialization
  has_many :users
end
