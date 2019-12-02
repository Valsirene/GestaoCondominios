require "application_system_test_case"

class CadastroMoradoresTest < ApplicationSystemTestCase
  setup do
    @cadastro_moradore = cadastro_moradores(:one)
  end

  test "visiting the index" do
    visit cadastro_moradores_url
    assert_selector "h1", text: "Cadastro Moradores"
  end

  test "creating a Cadastro moradore" do
    visit cadastro_moradores_url
    click_on "New Cadastro Moradore"

    fill_in "Email", with: @cadastro_moradore.email
    fill_in "Endereco", with: @cadastro_moradore.endereco
    fill_in "Nome", with: @cadastro_moradore.nome
    fill_in "Telefone", with: @cadastro_moradore.telefone
    click_on "Create Cadastro moradore"

    assert_text "Cadastro moradore was successfully created"
    click_on "Back"
  end

  test "updating a Cadastro moradore" do
    visit cadastro_moradores_url
    click_on "Edit", match: :first

    fill_in "Email", with: @cadastro_moradore.email
    fill_in "Endereco", with: @cadastro_moradore.endereco
    fill_in "Nome", with: @cadastro_moradore.nome
    fill_in "Telefone", with: @cadastro_moradore.telefone
    click_on "Update Cadastro moradore"

    assert_text "Cadastro moradore was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadastro moradore" do
    visit cadastro_moradores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadastro moradore was successfully destroyed"
  end
end
