class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to bookings_path
    else
      @bookings = Booking.where(user: current_user)
      render 'bookings/index'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to bookings_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id, :user_id)
  end
end
