require 'rails_helper'

RSpec.feature "Cant add myself as a friend", type: :feature do
  scenario "A signed in user cant add themselves as a friend" do
    post_message("I'm looking for friends", 'Nata')
    expect(page).not_to have_link("Recruit Bridge Partner")
  end
end
