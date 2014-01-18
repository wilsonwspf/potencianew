class UnidadesController < ApplicationController
  before_action :set_unidade, only: [:show, :edit, :update, :destroy]

  # GET /unidades
  def index
    @unidades = Unidade.all
  end

  # GET /unidades/1
  def show
  end

  # GET /unidades/new
  def new
    @unidade = Unidade.new
  end

  # GET /unidades/1/edit
  def edit
  end

  # POST /unidades
  def create
    @unidade = Unidade.new(unidade_params)

    if @unidade.save
      redirect_to @unidade, notice: 'Unidade was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /unidades/1
  def update
    if @unidade.update(unidade_params)
      redirect_to @unidade, notice: 'Unidade was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /unidades/1
  def destroy
    @unidade.destroy
    redirect_to unidades_url, notice: 'Unidade was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidade
      @unidade = Unidade.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def unidade_params
      params.require(:unidade).permit(:descricao)
    end
end
