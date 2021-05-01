require 'rails_helper'

RSpec.feature "Adding friend", type: :feature do
  scenario "a friend can't add a user that added them" do
    post_message("I'm looking for friends", 'Nata')
    click_link 'Log Out'
    post_message("I'm not looking for friends", 'Max')
    click_link 'Recruit Bridge Partner'
    click_link 'Log Out'
    log_in('Nata')
    expect(page).not_to have_link("Add Friend")
  end
end
