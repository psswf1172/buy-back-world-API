class Api::V1::BrandController < ApplicationController
  
	def index
		respond_with Brand.all
	end

	def show
		respond_with Brand.find(params[:id])
	end

	def create
		brand = Brand.new(brand_params)
		if brand.save
			render json: brand, status: 201, location: [:api, brand]
		else
			render json: { errors: brand.errors }, status: 422
		end
	end

	def update
		brand = Brand.find(params[:id])
		if brand.update(brand_params)
			render json: brand, status: 200, location: [:api, brand]
		else
			render json: { errors: brand.errors }, status: 422
		end
	end

	def destroy
		brand = Brand.find(params[:id])
		brand.destroy
		head 204
	end

	private
	def brand
		Brand.find(params[:id])
	end

	def brand_params
		params.require(:brand).permit(:brand_name)
	end	

end

end
