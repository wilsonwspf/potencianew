class ValesController < ApplicationController
  before_action :set_vale, only: [:show, :edit, :update, :destroy]

  # GET /vales
  def index
    @vales = Vale.all
  end

  # GET /vales/1
  def show
  end

  # GET /vales/new
  def new
    @vale = Vale.new
  end

  # GET /vales/1/edit
  def edit
  end

  # POST /vales
  def create
    @vale = Vale.new(vale_params)

    if @vale.save
      redirect_to @vale, notice: 'Vale was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /vales/1
  def update
    if @vale.update(vale_params)
      redirect_to @vale, notice: 'Vale was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /vales/1
  def destroy
    @vale.destroy
    redirect_to vales_url, notice: 'Vale was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vale
      @vale = Vale.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vale_params
      params.require(:vale).permit(:valor, :motivo, :funcionario_id)
    end
end
