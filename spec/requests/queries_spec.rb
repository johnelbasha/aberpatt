require 'rails_helper'

RSpec.describe "Queries", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/queries/create"
      expect(response).to have_http_status(:success)
    end
  end

end
