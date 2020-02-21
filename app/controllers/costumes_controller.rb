class CostumesController < ApplicationController
  before_action :set_costume, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @costumes = Costume.geocoded
    @costumes = helpers.costumes_search(@costumes, params)

    @markers = @costumes.map do |costume|
      {
        lat: costume.latitude,
        lng: costume.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { costume: costume }),
      }
    end
  end

  def show
    @bookings = Booking.where(costume: @costume)
    @reviews = []
    @booking = Booking.new
    @bookings.each do |booking|
      @reviews << Review.find_by(booking: booking)
    end
  end

  def my_costumes
    @my_costumes = current_user.costumes
  end

  def new
    @costume = Costume.new
  end

  def create

    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save!
      redirect_to my_costumes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @costume.update(costume_params)
      redirect_to my_costumes_path
    else
      render :edit
    end
  end

  def destroy
    @costume.destroy
    redirect_to my_costumes_path
  end

  private

  def costume_params
    params.require(:costume).permit(:title, :description, :location, :price, :size, :gender, :theme, :photo)
  end

  def set_costume
    @costume = Costume.find(params[:id])
  end

end
