class Admin::ReservationsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @reservations = Reservation.all.where('day >= ?', Date.current).where('day < ?',
                                                                          Date.current >> 3).order(start_time: :asc)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      flash[:success] = 'ふとん洗い予約を削除しました。'
      redirect_to customer_path(current_customer.id)
    else
      render :show
    end
  end
end
