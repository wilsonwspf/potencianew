class FormapgtosController < ApplicationController
  before_action :set_formapgto, only: [:show, :edit, :update, :destroy]

  # GET /formapgtos
  def index
    @formapgtos = Formapgto.all
  end

  # GET /formapgtos/1
  def show
  end

  # GET /formapgtos/new
  def new
    @formapgto = Formapgto.new
  end

  # GET /formapgtos/1/edit
  def edit
  end

  # POST /formapgtos
  def create
    @formapgto = Formapgto.new(formapgto_params)

    if @formapgto.save
      redirect_to @formapgto, notice: 'Formapgto was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /formapgtos/1
  def update
    if @formapgto.update(formapgto_params)
      redirect_to @formapgto, notice: 'Formapgto was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /formapgtos/1
  def destroy
    @formapgto.destroy
    redirect_to formapgtos_url, notice: 'Formapgto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formapgto
      @formapgto = Formapgto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def formapgto_params
      params.require(:formapgto).permit(:name)
    end
end
