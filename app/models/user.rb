class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_secure_password
  # before_save :verify_authentication_token

  # def self.authenticate_user(params)
  #   user = self.where("email = ?", params[:email]).any?
  #   user if user && user.authenticate!(params[:password])
  # end

  # private

  # def verify_authentication_token
  #   if authentication_token.blank?
  #     self.authentication_token = generate_auth_token
  #   end
  # end

  #   def generate_auth_token
  #     loop do
  #       token = SecureRandom.urlsafe_base64(15)
  #       break token unless User.where(authentication_token: token).first
  #   end
  # end

end
