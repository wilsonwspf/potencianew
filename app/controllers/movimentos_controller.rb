class MovimentosController < ApplicationController
  before_action :set_movimento, only: [:show, :edit, :update, :destroy]

  # GET /movimentos
  def index
    @movimentos = Movimento.all
  end

  # GET /movimentos/1
  def show
  end

  # GET /movimentos/new
  def new
    @movimento = Movimento.new
  end

  # GET /movimentos/1/edit
  def edit
  end

  # POST /movimentos
  def create
    @movimento = Movimento.new(movimento_params)

    if @movimento.save
      redirect_to @movimento, notice: 'Movimento was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /movimentos/1
  def update
    if @movimento.update(movimento_params)
      redirect_to @movimento, notice: 'Movimento was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /movimentos/1
  def destroy
    @movimento.destroy
    redirect_to movimentos_url, notice: 'Movimento was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimento
      @movimento = Movimento.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movimento_params
      params.require(:movimento).permit(:es, :qtd, :preco, :produto_id)
    end
end
