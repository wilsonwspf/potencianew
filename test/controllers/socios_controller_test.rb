require 'test_helper'

class SociosControllerTest < ActionController::TestCase
  setup do
    @socio = socios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio" do
    assert_difference('Socio.count') do
      post :create, socio: { Tit_dep: @socio.Tit_dep, bairro: @socio.bairro, celular: @socio.celular, cep: @socio.cep, cidade: @socio.cidade, conjuge: @socio.conjuge, cpf: @socio.cpf, email: @socio.email, endereco: @socio.endereco, filiacao: @socio.filiacao, matricula: @socio.matricula, nascconjuge: @socio.nascconjuge, nascimento: @socio.nascimento, natural: @socio.natural, nome: @socio.nome, oexp: @socio.oexp, rg: @socio.rg, socio_id: @socio.socio_id, telfunc: @socio.telfunc, telres: @socio.telres, uf: @socio.uf, ufcid: @socio.ufcid }
    end

    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should show socio" do
    get :show, id: @socio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio
    assert_response :success
  end

  test "should update socio" do
    patch :update, id: @socio, socio: { Tit_dep: @socio.Tit_dep, bairro: @socio.bairro, celular: @socio.celular, cep: @socio.cep, cidade: @socio.cidade, conjuge: @socio.conjuge, cpf: @socio.cpf, email: @socio.email, endereco: @socio.endereco, filiacao: @socio.filiacao, matricula: @socio.matricula, nascconjuge: @socio.nascconjuge, nascimento: @socio.nascimento, natural: @socio.natural, nome: @socio.nome, oexp: @socio.oexp, rg: @socio.rg, socio_id: @socio.socio_id, telfunc: @socio.telfunc, telres: @socio.telres, uf: @socio.uf, ufcid: @socio.ufcid }
    assert_redirected_to socio_path(assigns(:socio))
  end

  test "should destroy socio" do
    assert_difference('Socio.count', -1) do
      delete :destroy, id: @socio
    end

    assert_redirected_to socios_path
  end
end
