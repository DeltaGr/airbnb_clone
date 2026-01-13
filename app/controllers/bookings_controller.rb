class BookingsController < ApplicationController
  def create
    # Hier würdest du später speichern:
    # @booking = current_user.bookings.build(booking_params)
    # @booking.save
    # redirect_to listing_path(params[:listing_id]), notice: "Booking erfolgreich!"

    # Temporär nur debug
    render plain: "Booking form submitted!"
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :guests, :listing_id)
  end
end
