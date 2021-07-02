require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase

  def setup
    @user = FactoryBot.create(:user, password: "password", password_confirmation: "password")
  end

  test "Login com credenciais validas" do 
    visit root_path
    click_link "Entrar"

    fill_in "E-mail",	with: @user.email
    fill_in "Senha", with: "password"

    click_button "Entrar"

    assert_text("Bem vindo #{@user.name}")
  end

  test "Login com credenciais invalidas" do
    
    visit root_path
    click_link "Entrar"

    fill_in "E-mail",	with: @user.email
    fill_in "Senha", with: "invalidpassword"

    click_button "Entrar"

    assert_equal new_session_path, current_path
    assert_text "E-mail ou senha invalidos"

  end
 
end
