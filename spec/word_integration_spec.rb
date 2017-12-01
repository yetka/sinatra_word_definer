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

  it('processes the user click on link and returns to the list') do
    visit('/word/1')
    click_link('Go back to the list of words!')
    expect(page).to have_content('The Word Definer')
  end

  it('processes the user entry and returns the list of words') do
    visit('/word/1')
    fill_in('word_definition', :with => 'a cell that is specialized to conduct nerve impulses')
    click_button('Add!')
    expect(page).to have_content('The Word Definer')
  end

end
