class Api::V1::OfferingsController < ApplicationController
	respond_to :json

	def index
		respond_with Offering.all
	end

	def show
		respond_with Offering.find(params[:id])
	end

	def create
		offering = Offering.new(offering_params)
		if offering.save
			render json: offering, status: 201, location: [:api, offering]
		else
			render json: { errors: offering.errors }, status: 422
		end
	end

	def update
		offering = Offering.find(params[:id])
		if offering.update(offering_params)
			render json: offering, status: 200, location: [:api, offering]
		else
			render json: { errors: offering.errors }, status: 422
		end	
	end

	def destroy
		offering = Offering.find(params[:id])
		offering.destroy
		head 204
	end

	private
	def offering
		Offering.find(params[:id])
	end

	def offering_params
		params.require(:offering).permit(:condition, :price, :device_id)
	end

end
