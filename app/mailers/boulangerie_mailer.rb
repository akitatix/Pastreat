class BoulangerieMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.proprietaire_mailer.reservation.subject
  #
  def reservation
    @boulangerie = params[:boulangerie]

    mail(
      to: 'gast.paulantoine@gmail.com',
      subject: 'Pastreat: une nouvelle réservation !'
    )
  end
end
