class RodiziosController < ApplicationController
  before_action :set_rodizio, only: [:show, :edit, :update, :destroy]

  # GET /rodizios
  def index
    if params[:filtro] == 'avista'
      @rodizios = Rodizio.where(:card_id => 5)
    elsif params[:filtro] == 'cv'
      @rodizios = Rodizio.where(:card_id => 1)
    elsif params[:filtro] == 'cm'
      @rodizios = Rodizio.where(:card_id => 2)
    elsif params[:filtro] == 'dv'
      @rodizios = Rodizio.where(:card_id => 3)
    elsif params[:filtro] == 'dm'
      @rodizios = Rodizio.where(:card_id => 4)
    elsif params[:filtro] == 'ch'
      @rodizios = Rodizio.where(:card_id => 6)
    else
      @rodizios = Rodizio.all
    end

  end

  # GET /rodizios/1
  def show
  end

  # GET /rodizios/new
  def new
    @rodizio = Rodizio.new
  end

  # GET /rodizios/1/edit
  def edit
  end

  # POST /rodizios
  def create
    @rodizio = Rodizio.new(rodizio_params)

    if @rodizio.save
      redirect_to @rodizio, notice: 'Rodizio was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /rodizios/1
  def update
    if @rodizio.update(rodizio_params)
      redirect_to @rodizio, notice: 'Rodizio was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /rodizios/1
  def destroy
    @rodizio.destroy
    redirect_to rodizios_url, notice: 'Rodizio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rodizio
      @rodizio = Rodizio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rodizio_params
      params.require(:rodizio).permit(:data, :qtd, :valor, :card_id)
    end
end
