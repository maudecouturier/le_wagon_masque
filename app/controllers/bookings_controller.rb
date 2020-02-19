class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :deny, :cancel, :approve]

  def index
    @review = Review.new
    @bookings = Booking.where(user: current_user)
  end

  # def costume_booking_requests(costume_id)
  #   @costume = Costume.find(costume_id)
  #   @costume_bookings_requests = @costume.bookings
  # end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @costume = Costume.find(params[:costume_id])
    @user = current_user
    @booking.costume = @costume
    @booking.user = @user
    @booking.status = "pending"
    if @booking.save!
      redirect_to bookings_path
    else
      render "costumes/show/"
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def approve
    @booking.update(status: 'approved')
    redirect_to my_costumes_path
  end

  def deny
    @booking.update(status: 'denied')
    redirect_to my_costumes_path
  end

  def cancel
    @booking.update(status: 'cancelled')
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :costume_id, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
