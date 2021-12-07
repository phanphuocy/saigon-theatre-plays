class BookingsController < ApplicationController
  before_action :require_signin
  before_action :set_play

  def index
    @bookings = @play.bookings
  end

  def new
    @booking = @play.bookings.new
  end

  def create
    @booking = @play.bookings.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to play_bookings_path(@play), notice: "Thanks, you're registered!"
    else
      render :new
    end
  end

  private def booking_params
    params.require(:booking).permit(:how_heard)
  end

  private def set_play
    @play = Play.find(params[:play_id])
  end
end
