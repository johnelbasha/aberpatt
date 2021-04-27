require 'rails_helper'

RSpec.feature 'user navigates through website' do
  scenario 'user flicks through each page in turn' do
  visit "/"
  click_link "Why PAT Test?"
  expect(page).to have_content("Why care about PAT Testing?")
  expect(page).to have_current_path(why_path)
  click_link "Prices"
  expect(page).to have_content("Good To Know")
  expect(page).to have_current_path(prices_path)
  click_link "Contact"
  expect(page).to have_content("Let's Talk")
  expect(page).to have_current_path(contact_path)
  click_link "Home"
  expect(page).to have_content("Meet your engineer")
  expect(page).to have_current_path(root_path)  
  end
end

# user goes to home page
  # finds a h1
  # expect path to be 
# then clicks on why pat test
  # fins h1 ....
  # expect path to be 
# then clicks on prices
  # finds h1...
  # expect path to be 
# then clicks on contact
  # finds h1
  # expect path to be 
