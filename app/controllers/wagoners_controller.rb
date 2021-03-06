
class WagonersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_wagoner, only: [:show, :edit, :update, :delete]

  def index
    @wagoners_list = Wagoner.all
    @wagoners = Wagoner.where.not(latitude: nil, longitude: nil)
    @markers = @wagoners.map do |wagoner|
      {
        lat: wagoner.latitude,
        lng: wagoner.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { wagoner: wagoner }),
        image_url: helpers.asset_url('logo_wagoner.png')
      }
    end
  end

  def show
    @wagoner = Wagoner.find(params[:id])
    @booking = Booking.new
        @markers =
      [{
        lat: @wagoner.latitude,
        lng: @wagoner.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { wagoner: @wagoner }),
        image_url: helpers.asset_url('logo_wagoner.png')
      }]
  end

  def wag_show
    @wagoner = Wagoner.find(params[:id])
    # @wagoners = Wagoner.where.not(latitude: nil, longitude: nil)
    @markers =
      [{
        lat: @wagoner.latitude,
        lng: @wagoner.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { wagoner: @wagoner }),
        image_url: helpers.asset_url('logo_wagoner.png')
      }]

  end

  def new
    @wagoner = Wagoner.new
  end

  def create
    @wagoner = Wagoner.new(wagoner_params)
    if @wagoner.save
      redirect_to wag_show_wagoner_path(@wagoner)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @wagoner.update(wagoner)
  end

  def delete
    @wagoner.destroy
  end

  private

  def find_wagoner
    @wagoner = Wagoner.find(params[:id])
  end

  def wagoner_params
    params.require(:wagoner).permit(:description, :github_name, :price, :user_id, :rating, :avatar, :address)
  end
end
