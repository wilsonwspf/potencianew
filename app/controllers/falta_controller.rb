class FaltaController < ApplicationController
  before_action :set_faltum, only: [:show, :edit, :update, :destroy]

  # GET /falta
  def index
    @falta = Faltum.all
  end

  # GET /falta/1
  def show
  end

  # GET /falta/new
  def new
    @faltum = Faltum.new
  end

  # GET /falta/1/edit
  def edit
  end

  # POST /falta
  def create
    @faltum = Faltum.new(faltum_params)

    if @faltum.save
      redirect_to @faltum, notice: 'Faltum was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /falta/1
  def update
    if @faltum.update(faltum_params)
      redirect_to @faltum, notice: 'Faltum was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /falta/1
  def destroy
    @faltum.destroy
    redirect_to falta_url, notice: 'Faltum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faltum
      @faltum = Faltum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def faltum_params
      params.require(:faltum).permit(:motivo, :funcionario_id)
    end
end
