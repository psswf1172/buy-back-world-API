class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  include ActionController::Serialization
  # include ActionController::HttpAuthentication::Token::ControllerMethods
  # protect_from_forgery with: :exception
  # before_action :authenticate!



end
