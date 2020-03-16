class HostsController < ApplicationController
  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    @host.save

    redirect_to host_spaces(@host)
  end

  private

  def host_params
    params.require(:host).permit(:email)
  end
end
