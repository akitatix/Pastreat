class Boulangerie < ApplicationRecord
  has_many :ratings
  has_many :reservations

  def average_rating
    ratings.average(:star)
  end

  def open?
    time_now_str = Time.now.utc.strftime('%H:%M')
    time_now_str > time_open.strftime('%H:%M') && time_now_str < time_close.strftime('%H:%M')
  end
end
