require 'rails_helper'

RSpec.feature "homepage" do
  scenario "user navigations to homepage url" do
    visit "/"
    expect(page).to have_content("Welcome to AberPAT")
    expect(page).to have_content("Meet your engineer")
    expect(page).to have_content("Lewis")
    expect(page).to have_content("07760668495")
    expect(page).to have_content("enquiries@aberpat.com")
    expect(page).to have_link("Home")
    expect(page).to have_link("Why PAT Test?")
    expect(page).to have_link("Prices")
    expect(page).to have_link("Contact")
    expect(page).to have_content("4 Albury View")
    expect(page).to have_content("Telephone:")
  end
end