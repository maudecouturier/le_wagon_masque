class CostumesController < ApplicationController
  before_action :set_costume, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @costumes = Costume.all
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
    @my_costumes = Costume.where(user: current_user)
  end

  def new
    @costume = Costume.new
  end

  def create

    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save
      redirect_to my_costumes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @costume.update(costume_params)
      redirect_to costume_path(@costume)
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
