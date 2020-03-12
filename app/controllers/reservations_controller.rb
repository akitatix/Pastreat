class ReservationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @reservations = Reservation.all
  end

  def new
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @reservation = Reservation.new
  end

  def create
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @reservation = Reservation.new(boulangerie: @boulangerie, nb_cr: params[:nb_cr])
    @reservation.user = current_user
    @reservation.boulangerie = @boulangerie
    @reservation.save

    if @reservation.save
      BoulangerieMailer.with(boulangerie: @boulangerie).reservation.deliver_now
      redirect_to reservations_path
    else
      render :new
    end

  end

  # def reservation_params
  #   params.require(:reservation).permit(:date, :price, :nb_pc, :nb_cr)
  # end
end
