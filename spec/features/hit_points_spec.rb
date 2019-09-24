feature 'seeing player 2s score' do
  scenario 'the page should render player 2 score' do
    sign_in_and_play
    # expect(page).to have_content "Scott vs. Frankie"
    expect(page).to have_content "Frankie: 100"
  end
end
