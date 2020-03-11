# Preview all emails at http://localhost:3000/rails/mailers/proprietaire_mailer
class ProprietaireMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/proprietaire_mailer/reservation
  def reservation
    proprietaire = Proprietaire.first
    ProprietaireMailer.reservation(proprietaire)
  end
end
