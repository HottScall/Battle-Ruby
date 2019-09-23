feature 'Enter names' do
  scenario 'submitting names' do
  visit('/')
  fill_in :player_1_name, with: "Scott"
  fill_in :player_2_name, with: "Frankie"
  click_button 'Submit'
  expect(page).to have_content "Scott vs. Frankie"
  end
end
