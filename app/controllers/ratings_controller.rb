class RatingsController < ApplicationController
  skip_before_action :redirect_voting

  def new
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @rating = Rating.new
  end

  def create
    @boulangerie = Boulangerie.find(params[:boulangery_id])
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @rating.boulangerie = @boulangerie

    if @rating.save
      current_user.update(boulangerie: nil)
      redirect_to root_path
    else
      render :new
    end
  end

  def rating_params
    params.require(:rating).permit(:star)
  end
end
