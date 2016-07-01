class Api::V1::OfferingsController < ApplicationController

	def index
		render json: Offerings.all
	end

	def show
		render json: offering
	end

	def create
		render json: Offering.create(offering_params)
	end

	def update
		render json: offering.update(offering_params)
	end

	def destroy
		render json: post.destroy
	end

	private
	def offering
		Offering.find(params[:id])
	end

	def offering_params
		params.require(:offering).permit(:condition, :price, :device_id)
	end

end
