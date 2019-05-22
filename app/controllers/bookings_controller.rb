class BookingsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :index

  def index
    @bookings = Booking.where(user: current_user)
  end

  # def new
  #   @wagoner = Wagoner.find(params[:wagoner_id])
  #   @booking = Booking.new
  # end

  # def show
  # end

  def create
    @wagoner = Wagoner.find(params[:wagoner_id])
    @booking = Booking.new(booking_params)
    @booking.wagoner = @wagoner
    @booking.user = current_user

    if @booking.save
      redirect_to wagoner_bookings_path(@wagoner)
    else
      render :new
    end
  end
end
