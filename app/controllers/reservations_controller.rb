class ReservationsController < ApplicationController
  before_action :load_restaurant, only: [:create]
  before_action :reservation_params, only: [:create]

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.create(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to @restaurant, notice: 'Reservation Booked'
    else
      redirect_to restaurants_url()
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :party_size)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
