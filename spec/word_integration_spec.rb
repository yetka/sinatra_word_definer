require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word definder path', {:type => :feature}) do

  it('processes the user entry and returns the list of words') do
    visit('/')
    fill_in('name', :with => 'neuron')
    click_button('Add!')
    expect(page).to have_content('neuron')
  end

  it('processes the user click on the word from the list and returns the page with definitions') do
    visit('/')
    fill_in('name', :with => 'axon')
    click_link('axon')
    expect(page).to have_content('axon')
  end
  
end
