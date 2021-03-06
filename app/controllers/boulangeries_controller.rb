require 'json'
require 'open-uri'
class BoulangeriesController < ApplicationController
 skip_before_action :verify_authenticity_token, only: [:create]
 skip_before_action :authenticate_user!, only: [:index, :toto, :indexGeo]

  def index
    @boulangeries = Boulangerie.all
  end

  def indexGeo
    @boulangeries = Boulangerie.all.map do |b|
      b = b.attributes
      b[:image_url] = ActionController::Base.helpers.image_path(b["image"])
      b
    end

    render json: { boulangeries: @boulangeries }
  end

  def visit
    @boulangerie = Boulangerie.find(params[:id])
    current_user.update!(boulangerie: @boulangerie)
  end

  def ranking
    @boul_or = Boulangerie.where({badge: "Or"})
    @boul_ar = Boulangerie.where({badge: "Argent"})
    @boul_br = Boulangerie.where({badge: "Bronze"})
    @count = 0
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

  def toto
    p "hello"
    url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{params["origins"]}&destinations=#{params["destinations"]}&mode=walking&key=AIzaSyC3NHPtUXtqe9uXK2FnPrGrd6nVt0lnmgQ"
    resp = open(url).read
    parsat = JSON.parse(resp)
    @dist = parsat["rows"][0]["elements"][0]["distance"]["text"]
    render json: { distance: @dist }
  end

  def boulangerie_params
    params.require(:boulangerie).permit(:name, :position, :badge, :prix_pc, :prix_cr, :time_open, :time_close)
  end

  def scoring(array)
    it = 0
    array.each do |x|
      it += x
    end
    it = it / it.length
  end

end
