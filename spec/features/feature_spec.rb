feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Hello hello'
  end
end
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
