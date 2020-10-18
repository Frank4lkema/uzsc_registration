require 'rails_helper'

RSpec.describe "Dashboards", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/dashboards/home"
      expect(response).to have_http_status(:success)
    end
  end

end
