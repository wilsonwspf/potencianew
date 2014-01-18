class TipodocsController < ApplicationController
  before_action :set_tipodoc, only: [:show, :edit, :update, :destroy]

  # GET /tipodocs
  def index
    @tipodocs = Tipodoc.all
  end

  # GET /tipodocs/1
  def show
  end

  # GET /tipodocs/new
  def new
    @tipodoc = Tipodoc.new
  end

  # GET /tipodocs/1/edit
  def edit
  end

  # POST /tipodocs
  def create
    @tipodoc = Tipodoc.new(tipodoc_params)

    if @tipodoc.save
      redirect_to @tipodoc, notice: 'Tipodoc was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tipodocs/1
  def update
    if @tipodoc.update(tipodoc_params)
      redirect_to @tipodoc, notice: 'Tipodoc was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tipodocs/1
  def destroy
    @tipodoc.destroy
    redirect_to tipodocs_url, notice: 'Tipodoc was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipodoc
      @tipodoc = Tipodoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipodoc_params
      params.require(:tipodoc).permit(:name)
    end
end
