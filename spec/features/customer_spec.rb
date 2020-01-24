require 'rails_helper'

feature "Customers", type: :feature do
  scenario "Verify customer register"do
    visit(root_path)
    expect(page).to have_link('Cadastro de Clientes')
  end

  scenario "Verify New Client link" do
    visit(root_path)
    click_on('Cadastro de Clientes')
    expect(page).to have_content('Listando Clientes')
    expect(page).to have_link('Novo Cliente')

  end

end
