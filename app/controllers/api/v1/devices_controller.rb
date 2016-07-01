class Api::V1::DevicesController < ApplicationController
	
	def index
		render json: Device.all
	end

	def show
		render json: device
	end

	def create
		render json: Device.create(device_params)
	end

	def update
		render json: device.update(device_params)
	end

	def destroy
		render json: device.destroy
	end

	private
	def device
		Device.find(params[:id])
	end

	def device_params
		params.require(:device).permit(:name, :model, :network, :size, :image)
	end

end
