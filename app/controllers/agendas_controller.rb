class AgendasController < ApplicationController
  before_action :set_agenda, only: [:show, :edit, :update, :destroy]

  # GET /agendas
  def index
    @agendas = Agenda.all
  end

  # GET /agendas/1
  def show
  end

  # GET /agendas/new
  def new
    @agenda = Agenda.new
  end

  # GET /agendas/1/edit
  def edit
  end

  # POST /agendas
  def create
    @agenda = Agenda.new(agenda_params)

    if @agenda.save
      redirect_to @agenda, notice: 'Agenda was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /agendas/1
  def update
    if @agenda.update(agenda_params)
      redirect_to @agenda, notice: 'Agenda was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /agendas/1
  def destroy
    @agenda.destroy
    redirect_to agendas_url, notice: 'Agenda was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agenda_params
      params.require(:agenda).permit(:nome, :nasc, :tel, :cel, :email)
    end
end
