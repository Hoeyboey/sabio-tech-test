class CustomersController < ApplicationController
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      render :json => @customer.as_json, :status => :created
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
end
