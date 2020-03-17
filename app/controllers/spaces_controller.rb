class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
  end

  def new
    @host = Host.find(params[:host_id])
    @space = Space.new
  end

  def create
    @host = Host.find(params[:host_id])
    @space = Space.new(space_params)
    @space.host = @host

    if @space.save
      redirect_to root_path
    else
      render :new
    end
  end

  def space_params
    params.require(:space).permit(:name, :address, :price_per_hour, :outlets, :capacity)
  end

end
