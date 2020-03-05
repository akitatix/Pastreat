class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @reservation = Reservation.new
  end

  def create
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.boulangerie = @boulangerie
    @reservation.save

    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end

  end

  def reservation_params
    params.require(:reservation).permit(:date, :price, :nb_pc, :nb_cr)
  end
end
