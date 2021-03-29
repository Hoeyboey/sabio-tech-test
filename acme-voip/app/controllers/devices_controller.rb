class DevicesController < ApplicationController
  def create
    @device = Device.new(params[:device])
    if @device.save
      render :json => @device.as_json, :status => :created
    end
  end

  def read

  end

  def show

  end

  def update

  end
end
