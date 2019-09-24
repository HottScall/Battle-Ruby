feature 'Attack Player 2' do
  scenario 'Player 1 attacked player 2 via a button' do
  sign_in_and_play
  click_button "Attack"
  expect(page).to have_content "Scott attacked Frankie"
  end

  scenario 'reduces player 2 hp by 10 points' do
  sign_in_and_play
  click_button "Attack"
  # click_link "ok"
  expect(page).not_to have_content 'Frankie: 100'
  expect(page).to have_content 'Frankie: 90'
  end
end
