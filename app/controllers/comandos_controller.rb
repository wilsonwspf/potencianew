class ComandosController < ApplicationController
  before_action :set_comando, only: [:show, :edit, :update, :destroy]

  # GET /comandos
  def index
    @comandos = Comando.all
  end

  # GET /comandos/1
  def show
  end

  # GET /comandos/new
  def new
    @comando = Comando.new
  end

  # GET /comandos/1/edit
  def edit
  end

  # POST /comandos
  def create
    @comando = Comando.new(comando_params)

    if @comando.save
      redirect_to @comando, notice: 'Comando was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /comandos/1
  def update
    if @comando.update(comando_params)
      redirect_to @comando, notice: 'Comando was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /comandos/1
  def destroy
    @comando.destroy
    redirect_to comandos_url, notice: 'Comando was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comando
      @comando = Comando.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comando_params
      params.require(:comando).permit(:oque, :como)
    end
end
