require 'rails_helper'

RSpec.describe BrandController, type: :controller do

  describe "GET #brand_name:string" do
    it "returns http success" do
      get :brand_name:string
      expect(response).to have_http_status(:success)
    end
  end

end
