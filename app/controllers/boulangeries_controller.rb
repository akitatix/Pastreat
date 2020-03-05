require 'json'
require 'open-uri'
class BoulangeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :parsing_distance, only: [:show]
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

  def parsing_distance
    @boulangerie = Boulangerie.find(params[:id])
    @user = current_user
    if @user.location != nil
      url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{@user.location}&destinations=#{@boulangerie.position}&mode=walking&key=AIzaSyC3NHPtUXtqe9uXK2FnPrGrd6nVt0lnmgQ"
      resp = open(url).read
      parsat = JSON.parse(resp)
      @dist = parsat["rows"][0]["elements"][0]["distance"]["text"]
    end
  end

  def boulangerie_params
    params.require(:boulangerie).permit(:name, :position, :badge, :prix_pc, :prix_cr, :time_open, :time_close)
  end

end
