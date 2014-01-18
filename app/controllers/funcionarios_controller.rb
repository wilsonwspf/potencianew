class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]

  # GET /funcionarios
  def index
    @funcionarios = Funcionario.all
  end

  # GET /funcionarios/1
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit
  end

  # POST /funcionarios
  def create
    @funcionario = Funcionario.new(funcionario_params)

    if @funcionario.save
      redirect_to @funcionario, notice: 'Funcionario criado com sucesso.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /funcionarios/1
  def update
    if @funcionario.update(funcionario_params)
      redirect_to @funcionario, notice: 'Funcionario atualizado com sucesso.'
    else
      render action: 'edit'
    end
  end

  # DELETE /funcionarios/1
  def destroy
    @funcionario.destroy
    redirect_to funcionarios_url, notice: 'Funcionario deletado com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      @funcionario = Funcionario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def funcionario_params
      params.require(:funcionario).permit(:nome, :nascimento, :endereco, :bairro, :cidade, :uf, :tel, :cel, :email, :rg, :cpf, :admissao, :obs)
    end
end
