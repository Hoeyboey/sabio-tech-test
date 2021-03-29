require 'rails_helper'
require 'json'

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

  describe "refuses bad parameters" do
    let(:bad_params) do
      {
        customer: { 
          name: "John Smith",
          postcode: "12345678",
          contractEndDate: Time.now,
          contractTier: "Bronze"
        }
      }
    end

    before do
      post :create, params: bad_params
    end

    it "returns bad request http status code" do
      expect(response).to have_http_status(:bad_request)
    end
  end

  describe "shows customer information and assigned devices" do
    let(:customer) do 
      {
        name: "John Smith",
        postcode: "1234567",
        contractEndDate: Time.now,
        contractTier: "Bronze"
      }
    end

    before do 
      @customer = Customer.create(customer)
      binding.pry
      get :show, params: @customer[id]
    end

    it "returns customer and device information" do
      expect(response).to have_http_status(:success)

      customer_information = JSON.parse(response.body)
      expect(customer).to contain(customer)
    end
  end
end
