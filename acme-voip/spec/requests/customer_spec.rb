require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe "create customer" do
    let(:good_params) do
      {
        customer: { 
          name: "John Smith",
          postcode: "1234567",
          contractEndDate: Time.now,
          contractTier: "Bronze"
        }
      }
    end

    before do
      post :create, params: good_params
    end

    it "returns correct http status code" do
      expect(response).to have_http_status(:created)
    end
  end
end
