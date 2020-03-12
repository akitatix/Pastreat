# Preview all emails at http://localhost:3000/rails/mailers/boulangerie_mailer
class BoulangerieMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/boulangerie_mailer/reservation
  def reservation
    boulangerie = Boulangerie.first
    BoulangerieMailer.with(boulangerie: boulangerie).reservation
  end
end
