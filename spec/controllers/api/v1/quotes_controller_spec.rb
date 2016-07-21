require 'rails_helper'
require 'spec_helper'

RSpec.describe Api::V1::QuotesController do

  describe "POST #create" do
    context "when is successfully created" do
      before(:each) do
        @quote_attributes = FactoryGirl.attributes_for :quote
        post :create, { quote: @quote_attributes }
      end

      it "renders the json representation for the quote record just created" do
        quote_response = json_response
        expect(quote_response[:phone]).to eql @quote_attributes[:phone]
      end

      it { should respond_with 201 }
    end

    context "when is not created" do
      before(:each) do
        # not including the email
        @invalid_quote_attributes = { phone: "abcdefg", phone_confirmation: "abcdefg" }
        post :create, { quote: @invalid_quote_attributes }
      end

      it "renders an errors json" do
        quote_response = json_response
        expect(quote_response).to have_key(:errors)
      end

      it "renders the json errors on why the quote could not be created" do
        quote_response = json_response
        expect(quote_response[:errors][:phone]).to include "can't be blank"
      end

      it { should respond_with 422 }
    end
  end

  # describe "PUT/PATCH #update" do
  #   before(:each) do
  #     @user = FactoryGirl.create :user
  #   end

  #   context "when is successfully updated" do
  #     before(:each) do
  #       patch :update, { id: @user.id, user: { email: "newmail@example.com" } }
  #     end

  #     it "renders the json representation for the updated user" do 
  #       user_response = json_response
  #       expect(user_response[:email]).to eql "newmail@example.com"
  #     end

  #     it { should respond_with 200 }
  #   end

  #   context "when is not created" do
  #     before(:each) do
  #       @user = FactoryGirl.create :user 
  #       patch :update, { id: @user_id, user: { email: "bademail.com" } }
  #     end

  #     it "renders an errors json" do
  #       user_response = json_response
  #       expect(user_response).to have_key(:errors)
  #     end

  #     it "renders the json errors why the user could not be created" do
  #       user_response = json_response
  #       expect(user_response[:errors][:email]).to include "is invalid"
  #     end

  #     it { should respond_with 422 }
  #   end
  # end

  # describe "DELETE #destroy" do
  #   before(:each) do
  #     @user = FactoryGirl.create :user
  #     delete :destroy, { id: @user_id }
  #   end

  #   it { should respond_with 204 }
  # end
end
