class Api::V1::ServersController < ApplicationController

  def index 
    @servers = Server.all
    render json: @servers, only: [:id, :name], include: :tables
  end

  def new 
    @server = Server.new
  end

  def show
    if @server == nil
      flash[:alert] = "Please log in"
        redirect_to servers_path
      end
  end

  def create
    @server = Server.new(server_params)
    if @server.save
      redirect_to server_path(@server)
    end
  end

  def edit
    if @server 
      render :edit 
    else 
      redirect_to servers_path
    end
  end

  def update
    @server.update(server_params)
    redirect_to server_path
  end

  def destroy 
    @server.destroy
    redirect_to servers_path
  end

  private 

  def server_params 
    params.require(:server).permit(:name, :password)
  end
end

end