require 'rails_helper'

RSpec.feature "Adding friend", type: :feature do
  scenario "a fiend appears in a users friend list when added by that user" do
    post_message("I'm looking for friends", 'Nata')
    click_link 'Log Out'
    sign_up('Max')
    click_link 'Recruit Bridge Partner'
    click_link 'Log Out'
    log_in('Nata')
    find(".link_to_friends").click
    expect(page).to have_content("Nata's Filofax: Max")
  end
end
