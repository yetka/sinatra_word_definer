require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word list path', {:type => :feature}) do
  it('processes the user entry and returns the list of words') do
    visit('/')
    fill_in('name', :with => 'neuron')
    click_button('Add!')
    expect(page).to have_content('neuron')
  end
end
