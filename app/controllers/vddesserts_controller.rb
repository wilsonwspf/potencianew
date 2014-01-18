class VddessertsController < ApplicationController
  before_action :set_vddessert, only: [:show, :edit, :update, :destroy]

  # GET /vddesserts
  def index
    if params[:filtro] == 'almoco'
      @vddesserts = Vddessert.where(:almoco =>true)
    elsif params[:filtro] == 'jantar'
      @vddesserts = Vddessert.where(:almoco =>false)


    else
      @vddesserts = Vddessert.all
    end

  end

  # GET /vddesserts/1
  def show
  end

  # GET /vddesserts/new
  def new
    @vddessert = Vddessert.new
  end

  # GET /vddesserts/1/edit
  def edit
  end

  # POST /vddesserts
  def create
    @vddessert = Vddessert.new(vddessert_params)

    if @vddessert.save
      redirect_to @vddessert, notice: 'Vddessert was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /vddesserts/1
  def update
    if @vddessert.update(vddessert_params)
      redirect_to @vddessert, notice: 'Vddessert was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /vddesserts/1
  def destroy
    @vddessert.destroy
    redirect_to vddesserts_url, notice: 'Vddessert was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vddessert
      @vddessert = Vddessert.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vddessert_params
      params.require(:vddessert).permit(:data, :dessert_id, :almoco, :qtd)
    end
end
