require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe "create customer" do
    before do
      post :create
    end

    it "returns correct http status code" do
      expect(response).to have_http_status(:created)
    end
  end
end
