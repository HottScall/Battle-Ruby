feature 'testing infrastructure' do
  scenario 'check to make sure page is loading' do
    visit('/')
    expect(page).to have_content "Test"
  end
end
