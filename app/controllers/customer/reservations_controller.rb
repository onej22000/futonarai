class Customer::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 3).order(day: :desc)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
end
