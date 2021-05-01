require 'rails_helper'

RSpec.describe FriendsController, type: :controller do
  before do
    @user1 = User.create(username: "test1", password: "1234", image: fixture_file_upload('./spec/fixtures/pikachu.png'))
    @user2 = User.create(username: "test2", password: "1234", image: fixture_file_upload('./spec/fixtures/pikachu.png'))
  end

  describe "POST /friends/create" do
    it "responds with 200" do
      post :create, params: { friend: { user_id: @user1.id, other_user_id: @user2.id } }
      expect(response).to redirect_to(posts_url)
    end
  end
end
