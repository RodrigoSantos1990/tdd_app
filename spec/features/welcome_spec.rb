require 'rails_helper'

feature "Welcome", type: :feature do
  scenario 'Shows Welcoming message' do
    visit (root_path)
    expect(page).to have_content('Welcome')
  end

  scenario 'click on button and goes to register' do
    visit (root_path)
    expect(find('ul li')).to have_link('Cadastro de Clientes')
  end

end
