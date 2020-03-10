class Boulangerie < ApplicationRecord
  has_many :ratings
  has_many :reservations

  def average_rating
    ratings.average(:star)
  end

  def open?
    open = time_open.hour + (time_open.min * 0.1)
    close = time_close.hour + (time_close.min * 0.1)
    time = Time.now.hour + (Time.now.min * 0.1)
    p open
    p close
    if time > open && time < close
      true
    else
      false
    end
  end
end
