class ProprietaireMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.proprietaire_mailer.reservation.subject
  #
  def reservation
    @greeting = "Hi"

    mail(to: @proprietaire.email, subject: 'Nouvelle réservation !')
  end
end
