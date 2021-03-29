require 'rails_helper'

RSpec.describe DevicesController, type: :controller do
  describe "create device" do
    before do
      post :create
    end

    it "returns correct http status code" do
      expect(response).to have_http_status(:created)
    end
  end
end
