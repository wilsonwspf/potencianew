class CxdiariosController < ApplicationController
  before_action :set_cxdiario, only: [:show, :edit, :update, :destroy]

  # GET /cxdiarios
  def index
    @cxdiarios = Cxdiario.all
  end

  # GET /cxdiarios/1
  def show
  end

  # GET /cxdiarios/new
  def new
    @cxdiario = Cxdiario.new
  end

  # GET /cxdiarios/1/edit
  def edit
  end

  # POST /cxdiarios
  def create
    @cxdiario = Cxdiario.new(cxdiario_params)

    if @cxdiario.save
      redirect_to @cxdiario, notice: 'Cxdiario was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /cxdiarios/1
  def update
    if @cxdiario.update(cxdiario_params)
      redirect_to @cxdiario, notice: 'Cxdiario was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /cxdiarios/1
  def destroy
    @cxdiario.destroy
    redirect_to cxdiarios_url, notice: 'Cxdiario was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cxdiario
      @cxdiario = Cxdiario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cxdiario_params
      params.require(:cxdiario).permit(:data, :almoco, :qtdrodizio, :dinheiro, :visaC, :visaD, :masterC, :masterD, :redeshop, :amex, :total, :media, :despesas, :descontos, :sobra, :falta, :caixinha, :cofre)
    end
end
