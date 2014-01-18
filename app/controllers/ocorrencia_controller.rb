class OcorrenciaController < ApplicationController
  before_action :set_ocorrencium, only: [:show, :edit, :update, :destroy]

  # GET /ocorrencia
  def index
    @ocorrencia = Ocorrencium.all
  end

  # GET /ocorrencia/1
  def show
  end

  # GET /ocorrencia/new
  def new
    @ocorrencium = Ocorrencium.new
  end

  # GET /ocorrencia/1/edit
  def edit
  end

  # POST /ocorrencia
  def create
    @ocorrencium = Ocorrencium.new(ocorrencium_params)

    if @ocorrencium.save
      redirect_to @ocorrencium, notice: 'Ocorrencium was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /ocorrencia/1
  def update
    if @ocorrencium.update(ocorrencium_params)
      redirect_to @ocorrencium, notice: 'Ocorrencium was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /ocorrencia/1
  def destroy
    @ocorrencium.destroy
    redirect_to ocorrencia_url, notice: 'Ocorrencium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocorrencium
      @ocorrencium = Ocorrencium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ocorrencium_params
      params.require(:ocorrencium).permit(:descricao)
    end
end
