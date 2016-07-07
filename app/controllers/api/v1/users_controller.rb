class Api::V1::UsersController < ApplicationController
	respond_to :json

  def show
    render json: User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	respond_to do |format|
      if user.save
        UserMailer.seller_waiting(@admin).deliver_now
  		  render json: user, status: 201, location: [:api, user]
  	   else
  		  render json: { errors: user.errors }, status: 422
      end
  	end
  end

  def update
  	user = User.find(params[:id])
  	if user.update(user_params)
  		render json: user, status: 200, location: [:api, user]
  	else
  		render json: { errors: user.errors }, status: 422
  	end
  end

  def destroy
  	user = User.find(params[:id])
  	user.destroy
  	head 204
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone)
  end

end
