feature 'seeing player 2s score' do
  scenario 'the page should render player 2 score' do
    visit('/')
    fill_in :player_1_name, with: "Scott"
    fill_in :player_2_name, with: "Frankie"
    click_button 'Submit'
    expect(page).to have_content "Frankie: 100 points"
  end
end
