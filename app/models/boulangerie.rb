class Boulangerie < ApplicationRecord
  has_many :ratings
  has_many :reservations

  def average_rating
    ratings.average(:star)
  end
end
