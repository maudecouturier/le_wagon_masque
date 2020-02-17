class CostumesController < ApplicationController
  before_action :set_costume, only: [:show, :edit, :update, :destroy]

  def index
    @costumes = Costume.all
  end

  def show
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to costume_path(@costume)
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
    redirect_to costumes_path
  end

  private

  def costume_params
    params.require(:costume).permit(:description, :location, :price, :size, :gender, :theme, :user_id)
  end

  def set_costume
    @costume = Costume.find(params[:id])
  end

end
