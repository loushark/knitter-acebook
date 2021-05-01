require 'rails_helper'

RSpec.feature "List friends of another user", type: :feature do
  scenario "a user can see another users list of friends" do
    post_message("I'm looking for friends", 'Nata')
    click_link 'Log Out'
    second_sign_up('Max')
    click_link 'Recruit Bridge Partner'
    click_link 'Log Out'
    log_in('Nata')
    find(".link_to_friends").click
    expect(page).to have_content("Nata's Filofax: Max")
  end
end
