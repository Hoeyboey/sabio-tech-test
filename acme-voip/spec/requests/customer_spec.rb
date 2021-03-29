require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "create customer" do
    before do:
      post :index
    end

    it "returns correct http status code" do
      expect(response).to have_http_status(:created)
    end

    
  end
end
