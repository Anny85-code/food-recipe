require 'rails_helper'

RSpec.describe "Shoppings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/shopping/index"
      expect(response).to have_http_status(:success)
    end
  end

end
