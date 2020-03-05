class RatingsController < ApplicationController
  def new
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @rating = Rating.new
  end

  def create
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @rating.boulangerie = @boulangerie
    @rating.save

    if @rating.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def rating_params
    params.require(:rating).permit(:star)
  end
end
