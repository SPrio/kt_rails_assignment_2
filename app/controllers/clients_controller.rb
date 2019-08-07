class ClientsController < ApplicationController

  before_action :get_client, except: [:index, :new, :create]

  def index
    if params[:search]
      @clients = Client.search(params[:search])
    else
      @clients = Client.all
    end
  end

  def show
  end

  def new
    @client = Client.new
  end

  def edit 
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      generate_flash "Client has been succesfully created"
      redirect_to @client
    else
      generate_flash "Failed to create Client"
      render "new"
    end
  end

  def update 
    if @client.update(client_params)
      generate_flash "Client has been succesfully Updated"
      redirect_to clients_path
    else
      generate_flash "Failed to update Client"
      render "edit"
    end
  end

  def destroy
    @client.destroy
    generate_flash "Client has been succesfully destroyed"
    redirect_to clients_path
  end

  def generate_flash(msg)
    flash[:notice] = msg
  end

  def get_client
    @client = Client.find(params[:id])
  end

  private
    def client_params
      params.require(:client).permit(:name, :email)     
    end
end
