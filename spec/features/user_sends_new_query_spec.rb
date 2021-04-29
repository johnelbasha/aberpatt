require 'rails_helper'

RSpec.feature "user sends new query" do
  scenario "user correctly fills all fields" do
    visit contact_path
    fill_in "query[name]", with: "Jeff Bezos"
    fill_in "query[email]", with: "johnelbasha@gmail.com"
    fill_in "query[number]", with: "01526542588"
    fill_in "query[message]", with: "I need my office PAT tested. Please call to arrange"
    click_button "Submit"
    expect(page).to have_current_path(root_path)
    expect(page).to have_content("Your query has been successfully sent to us. An e-mail confirmation has been sent to you.")
    query = Query.last
    expect(query.name).to eq("Jeff Bezos")
  end

  scenario "user forgets name field" do
    visit contact_path
    fill_in "query[name]", with: ""
    fill_in "query[email]", with: "johnelbasha@gmail.com"
    fill_in "query[number]", with: "01526542588"
    fill_in "query[message]", with: "I need my office PAT tested. Please call to arrange"
    click_button "Submit"
    expect(page).to have_content("Let's Talk")
    expect(page).to have_content("Your query was not sent! Please check the errors below.")
    expect(Query.count).to eq(0)
  end

  scenario "user forgets email field" do
    visit contact_path
    fill_in "query[name]", with: "Tim Smith"
    fill_in "query[email]", with: ""
    fill_in "query[number]", with: "01526542588"
    fill_in "query[message]", with: "I need my office PAT tested. Please call to arrange"
    click_button "Submit"
    expect(page).to have_content("Let's Talk")
    expect(page).to have_content("Your query was not sent! Please check the errors below.")
    expect(Query.count).to eq(0)
  end

  scenario "user forgets phone numer" do
    visit contact_path
    fill_in "query[name]", with: "Tim Smith"
    fill_in "query[email]", with: "johnelbasha@gmail.com"
    fill_in "query[number]", with: ""
    fill_in "query[message]", with: "I need my office PAT tested. Please call to arrange"
    click_button "Submit"
    expect(page).to have_content("Let's Talk")
    expect(page).to have_content("Your query was not sent! Please check the errors below.")
    expect(Query.count).to eq(0)
  end

  scenario "user forgets message" do
    visit contact_path
    fill_in "query[name]", with: "Tim Smith"
    fill_in "query[email]", with: "johnelbasha@gmail.com"
    fill_in "query[number]", with: "05265896225"
    fill_in "query[message]", with: ""
    click_button "Submit"
    expect(page).to have_content("Let's Talk")
    expect(page).to have_content("Your query was not sent! Please check the errors below.")
    expect(Query.count).to eq(0)
  end


end