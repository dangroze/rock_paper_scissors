require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Playing a game' do
  before do
    sign_in_and_play
  end

  scenario 'Can see name' do
    expect(page).to have_content('Dan')
end

# As a marketeer
# I want to see the choices(rock, paper, scissors)

  scenario 'Can see Rock, Paper, Scissors' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

# The marketeer can choose one option

  scenario 'Can choose an option' do
    click_button 'Rock'
    expect(page).to have_content('You chose Rock!')
  end
end
