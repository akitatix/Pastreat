class Boulangerie < ApplicationRecord
  has_many :ratings
  has_many :reservations
end
