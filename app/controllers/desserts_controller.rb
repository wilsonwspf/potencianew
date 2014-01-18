class DessertsController < ApplicationController
  before_action :set_dessert, only: [:show, :edit, :update, :destroy]

  # GET /desserts
  def index
    @desserts = Dessert.all
  end

  # GET /desserts/1
  def show
  end

  # GET /desserts/new
  def new
    @dessert = Dessert.new
  end

  # GET /desserts/1/edit
  def edit
  end

  # POST /desserts
  def create
    @dessert = Dessert.new(dessert_params)

    if @dessert.save
      redirect_to @dessert, notice: 'Dessert was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /desserts/1
  def update
    if @dessert.update(dessert_params)
      redirect_to @dessert, notice: 'Dessert was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /desserts/1
  def destroy
    @dessert.destroy
    redirect_to desserts_url, notice: 'Dessert was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dessert
      @dessert = Dessert.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dessert_params
      params.require(:dessert).permit(:name)
    end
end
