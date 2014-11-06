class BookingsController < ApplicationController

  def index
  end

  def new
    @booking = Booking.new
    @flight = Flight.find_by_id(params[:flight_id])
    @passengers = []
    params[:passenger_quantity].to_i.times do
       @passengers << Passenger.new
    end
  end

end
