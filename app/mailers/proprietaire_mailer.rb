class ProprietaireMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.proprietaire_mailer.reservation.subject
  #
  def reservation(proprietaire)
    @proprietaire = proprietaire

    @greeting = "Hi"

    mail(to: @proprietaire.email, subject: 'Pastreat: une nouvelle réservation !')
  end
end
