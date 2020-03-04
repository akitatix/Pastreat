class BoulangeriesController < ApplicationController
  def index
    @boulangeries = Boulangerie.all
  end

  def new
    @boulangerie = Boulangerie.new
  end

  def create
    @boulangerie = Boulangerie.new(boulangerie_params)
    @boulangerie.save

    if @boulangerie.save
      redirect_to boulangeries_path
    else
      render :new
    end
  end

  def edit
    @boulangerie = Boulangerie.find(params[:id])
  end

  def show
    @boulangerie = Boulangerie.find(params[:id])
  end

  def update
    @boulangerie = Boulangerie.find(params[:id])
    @boulangerie.update(boulangerie_params)

    if @boulangerie.update(boulangerie_params)
      redirect_to boulangeries_path
    else
      render :edit
    end
  end

  def destroy
    @boulangerie = Boulangerie.find(params[:id])
    @boulangerie.destroy
    redirect_to boulangeries_path
  end

  def boulangerie_params
    params.require(:boulangerie).permit(:name, :position, :badge, :prix_pc, :prix_cr, :time_open, :time_close)
  end
end
