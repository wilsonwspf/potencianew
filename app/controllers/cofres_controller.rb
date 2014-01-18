class CofresController < ApplicationController
  before_action :set_cofre, only: [:show, :edit, :update, :destroy]

  # GET /cofres
  def index
    @cofres = Cofre.all
  end

  # GET /cofres/1
  def show
  end

  # GET /cofres/new
  def new
    @cofre = Cofre.new
  end

  # GET /cofres/1/edit
  def edit
  end

  # POST /cofres
  def create
    @cofre = Cofre.new(cofre_params)

    if @cofre.save
      redirect_to @cofre, notice: 'Cofre was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /cofres/1
  def update
    if @cofre.update(cofre_params)
      redirect_to @cofre, notice: 'Cofre was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /cofres/1
  def destroy
    @cofre.destroy
    redirect_to cofres_url, notice: 'Cofre was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cofre
      @cofre = Cofre.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cofre_params
      params.require(:cofre).permit(:data, :dineiro, :moeda, :chqvista, :dolares, :euros)
    end
end
