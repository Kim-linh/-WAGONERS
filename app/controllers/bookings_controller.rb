class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  # def show
  # end

  def create
    @booking = Booking.new(current_user)
    @booking.save
  end
end
