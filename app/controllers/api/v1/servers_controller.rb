class Api::V1::ServersController < ApplicationController

  def index 
    @servers = Server.all
    render json: @servers, only: [:id, :name], include: :tables
  end

end