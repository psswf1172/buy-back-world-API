require 'pry'
class Api::V1::QuotesController < ApplicationController
	respond_to :json


  def create
  	@quote = Quote.new(quote_params)
  	respond_to do |format|
      if quote.save
        QuoteMailer.quote_waiting(@adminuser).deliver_now
  		  render json: quote, status: 201, location: [:api, quote]
  	   else
  		  render json: { errors: quote.errors }, status: 422
      end
  	end
  end


  def destroy
  	quote = Quote.find(params[:id])
  	quote.destroy
  	head 204
  end

  private
  def quote_params
  	params.require(:quote).permit(:name, :phone, :device, :model, :network, :size, :condition, :price_cents)
  end

end
