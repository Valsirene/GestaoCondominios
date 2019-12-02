require 'test_helper'

class CadastroMoradoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_moradore = cadastro_moradores(:one)
  end

  test "should get index" do
    get cadastro_moradores_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_moradore_url
    assert_response :success
  end

  test "should create cadastro_moradore" do
    assert_difference('CadastroMoradore.count') do
      post cadastro_moradores_url, params: { cadastro_moradore: { email: @cadastro_moradore.email, endereco: @cadastro_moradore.endereco, nome: @cadastro_moradore.nome, telefone: @cadastro_moradore.telefone } }
    end

    assert_redirected_to cadastro_moradore_url(CadastroMoradore.last)
  end

  test "should show cadastro_moradore" do
    get cadastro_moradore_url(@cadastro_moradore)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_moradore_url(@cadastro_moradore)
    assert_response :success
  end

  test "should update cadastro_moradore" do
    patch cadastro_moradore_url(@cadastro_moradore), params: { cadastro_moradore: { email: @cadastro_moradore.email, endereco: @cadastro_moradore.endereco, nome: @cadastro_moradore.nome, telefone: @cadastro_moradore.telefone } }
    assert_redirected_to cadastro_moradore_url(@cadastro_moradore)
  end

  test "should destroy cadastro_moradore" do
    assert_difference('CadastroMoradore.count', -1) do
      delete cadastro_moradore_url(@cadastro_moradore)
    end

    assert_redirected_to cadastro_moradores_url
  end
end
