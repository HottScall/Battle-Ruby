def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Scott"
  fill_in :player_2_name, with: "Frankie"
  click_button 'Submit'
end
