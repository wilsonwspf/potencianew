class PagamentosController < ApplicationController
  before_action :set_pagamento, only: [:show, :edit, :update, :destroy]

  # GET /pagamentos
  def index
    if params[:filtro] == 'dia'
      @pagamentos = Pagamento.where(datapgto: Date.today)
    elsif params[:filtro] == 'mes'
      @pagamentos = Pagamento.where(datapgto: ((Date.today)..Date.today + 1.month))
    elsif params[:filtro] == 'amanha'
      @pagamentos = Pagamento.where(datapgto: (Date.today + 1.day))

    else
      @pagamentos = Pagamento.all
    end

  end

  # GET /pagamentos/1
  def show
  end

  # GET /pagamentos/new
  def new
    @pagamento = Pagamento.new
  end

  # GET /pagamentos/1/edit
  def edit
  end

  # POST /pagamentos
  def create
    @pagamento = Pagamento.new(pagamento_params)

    if @pagamento.save
      redirect_to @pagamento, notice: 'Pagamento was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /pagamentos/1
  def update
    if @pagamento.update(pagamento_params)
      redirect_to @pagamento, notice: 'Pagamento was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /pagamentos/1
  def destroy
    @pagamento.destroy
    redirect_to pagamentos_url, notice: 'Pagamento was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagamento
      @pagamento = Pagamento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pagamento_params
      params.require(:pagamento).permit(:datapgto, :valor, :status, :fornecedor_id)
    end
end
