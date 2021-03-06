feature 'Attack Player 2' do
  scenario 'Player 1 attacked player 2 via a button' do
  sign_in_and_play
  click_button "Attack"
  expect(page).to have_content "Scott attacked Frankie"
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Frankie: 60HP'
    expect(page).to have_content 'Frankie: 50HP'
  end
end
