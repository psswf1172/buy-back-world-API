class Api::V1::DevicesController < ApplicationController
	respond_to :json

	def index
		render json: Device.all
	end

	def show
		render json: Device.find(params[:id])
	end

	def create
		device = Device.new(device_params)
		if device.save
			render json: device, status: 201, location: [:api, device]
		else
			render json: { errors: device.errors }, status: 422
		end
	end

	def update
		device = Device.find(params[:id])
		if device.update(device_params)
			render json: device, status: 200, location: [:api, device]
		else
			render json: { errors: device.errors }, status: 422
		end
	end

	def destroy
		device = Device.find(params[:id])
		device.destroy
		head 204
	end

	private
	def device
		Device.find(params[:id])
	end

	def device_params
		params.require(:device).permit(:name, :model, :network, :size, :image, :price_cents)
	end

end
