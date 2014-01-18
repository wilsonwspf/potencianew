class CtrldessertsController < ApplicationController
  before_action :set_ctrldessert, only: [:show, :edit, :update, :destroy]

  # GET /ctrldesserts
  def index
    @ctrldesserts = Ctrldessert.all
  end

  # GET /ctrldesserts/1
  def show
  end

  # GET /ctrldesserts/new
  def new
    @ctrldessert = Ctrldessert.new
  end

  # GET /ctrldesserts/1/edit
  def edit
  end

  # POST /ctrldesserts
  def create
    @ctrldessert = Ctrldessert.new(ctrldessert_params)

    if @ctrldessert.save
      redirect_to @ctrldessert, notice: 'Ctrldessert was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /ctrldesserts/1
  def update
    if @ctrldessert.update(ctrldessert_params)
      redirect_to @ctrldessert, notice: 'Ctrldessert was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /ctrldesserts/1
  def destroy
    @ctrldessert.destroy
    redirect_to ctrldesserts_url, notice: 'Ctrldessert was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ctrldessert
      @ctrldessert = Ctrldessert.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ctrldessert_params
      params.require(:ctrldessert).permit(:data, :dessert_id, :almoco, :qtd)
    end
end
