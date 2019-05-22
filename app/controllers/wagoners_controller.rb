class WagonersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_wagoner, only: [:show, :edit, :update, :delete]

  def index
    @wagoners = Wagoner.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @wagoner = Wagoner.new
  end

  def create
    @wagoner = Wagoner.new(wagoner_params)
    if @wagoner.save
      redirect_to wagoners_path(@wagoner)
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
    params.require(:wagoner).permit(:description, :github_name, :price)
  end
end

