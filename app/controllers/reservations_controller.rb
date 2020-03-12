class ReservationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @reservations = Reservation.all
    @reservations.each { |x| p x.price }
  end

  def new
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @reservation = Reservation.new
  end

  def create
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @reservation = Reservation.new(reservation_params)
    price1 = @boulangerie.prix_pc * @reservation.nb_pc
    price2 = @boulangerie.prix_cr * @reservation.nb_cr
    @reservation.price = price1 + price2
    @reservation.user = current_user
    @reservation.boulangerie = @boulangerie
    p @reservation
    @reservation.save

    if @reservation.save
      BoulangerieMailer.with(boulangerie: @boulangerie).reservation.deliver_now
      redirect_to reservations_path
    else
      render :new
    end

  end

  def reservation_params
    params.require(:reservation).permit(:date, :price, :nb_pc, :nb_cr)
  end
end
