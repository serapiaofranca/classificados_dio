require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase

  test "usuario faz cadastro com dados validos" do
    visit "/"
    click_on "Cadastre-se"

    fill_in "Nome",	with: "Rogerio" 
    fill_in "E-mail",	with: "rogerio@teste.com"
    fill_in "Senha",	with: "minhasenha"  
    fill_in "Confirmação da senha",	with: "minhasenha" 

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!"
  end

  test "usuario faz cadastro com dados invalidos" do
    visit "/"
    click_on "Cadastre-se"

    click_on "Cadastrar"

    assert_text "Falha ao realizar o cadastro..."
  end
  
end
