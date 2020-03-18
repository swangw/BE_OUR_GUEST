class SpacesController < ApplicationController
  def index

    if params[:host_id]
      @host = Host.find(params[:host_id])
      @spaces = @host.spaces
      @spaces = @spaces.geocoded
      @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
      end
    else
      @spaces = Space.geocoded
      @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
      end
    end
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
      redirect_to host_spaces_path(@host)
    else
      render :new
    end
  end

  def edit
    @host = Host.find(params[:host_id])
    @space = Space.find(params[:id])
  end

  def update
    @host = Host.find(params[:host_id])
    @space = Space.find(params[:id])

    if @space.update(space_params)
      redirect_to host_spaces_path(@host)
    else
      render :edit
    end
  end

  def destroy
    @host = Host.find(params[:host_id])
    @space = Space.find(params[:id])
    @space.destroy

    redirect_to host_spaces_path(@host)
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price_per_hour, :outlets, :capacity, photos: [])
  end

end
