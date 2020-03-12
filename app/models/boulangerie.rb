class Boulangerie < ApplicationRecord
  has_many :ratings
  has_many :reservations, dependent: :destroy

  def average_rating
    ratings.average(:star)
  end

  def open?
    time_now_str = Time.now.utc.strftime('%H:%M')
    time_now_str > time_open.strftime('%H:%M') && time_now_str < time_close.strftime('%H:%M')
  end

  after_create :send_reservation_email

  private

  def send_reservation_email
    BoulangerieMailer.with(boulangerie: self).reservation.deliver_now
  end
end
