require 'rails_helper'

RSpec.describe "Friends", type: :request do
  describe "GET /index" do
    pending "returns http success" do
      get "/friends/index"
      expect(response).to have_http_status(:success)
    end
  end

end
