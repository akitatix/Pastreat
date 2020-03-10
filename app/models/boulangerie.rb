class Boulangerie < ApplicationRecord
  has_many :ratings
  has_many :reservations

  def average_rating
    ratings.average(:star)
  end

  def open?
    open = time_open.hour + 1 + (time_open.min * 0.01)
    close = time_close.hour + 1 + (time_close.min * 0.01)
    time = Time.now.hour + (Time.now.min * 0.01)
    if time > open && time < close
      true
    else
      false
    end
  end
end
