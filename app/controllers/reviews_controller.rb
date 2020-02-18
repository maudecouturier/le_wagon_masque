class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save!
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to my_bookings_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id, :user_id)
  end
end
