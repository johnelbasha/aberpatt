require 'rails_helper'

RSpec.feature "homepage" do
  scenario "user navigations to homepage url" do
    visit "/"
    expect(page).to have_content("Welcome to AberPAT")
    expect(page).to have_content("Meet your engineer")
    expect(page).to have_content("Lewis")
    expect(page).to have_content("07760668495")
    expect(page).to have_content("enquiries@aberpat.com")
  end
end