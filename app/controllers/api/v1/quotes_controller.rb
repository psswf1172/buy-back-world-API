require 'pry'
class Api::V1::QuotesController < ApplicationController
	respond_to :json, :html, only: :create

  def index
    render json: Quote.all
  end

  def create
  	@quote = Quote.new(quote_params)
  	respond_to do |format|
      if @quote.save
        QuotesMailer.quote_waiting(@quote).deliver_now
  		  format.json {render json: @quote, status: 201, location: [:api, @quote] }
        format.html { render(:text => "not today Satan") }
  	   else
  		  format.json {render json: @quote.errors }
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
  	params.require(:quote).permit(:name, :phone, :device, :model, :network, :size, :price, :condition)
  end

end
