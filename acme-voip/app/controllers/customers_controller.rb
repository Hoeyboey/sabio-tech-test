class CustomersController < ApplicationController

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render :json => @customer.as_json, :status => :created
    else
      render :json => @customer.errors, :status => :bad_request
    end
  end

  def read

  end

  def show

  end

  def update

  end

  def delete

  end

  private

    def customer_params
      params.require(:customer).permit(:name, :postcode, :contractEndDate, :contractTier)
    end
end
