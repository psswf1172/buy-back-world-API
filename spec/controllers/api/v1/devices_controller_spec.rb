require 'rails_helper'

RSpec.describe Api::V1::DevicesController do

	describe "GET #show" do
		before(:each) do

			@device = FactoryGirl.create :device
			get :show, id: @device.id
	end

	it "returns the information about a reporter on a hash" do
		device_response = json_response
		expect(device_response[:name]).to eql @device.name
	end

	it { should respond_with 200 }
	end

	# describe "GET #index" do
	# 	before(:each) do
	# 		4.times { FactoryGirl.create :device }
	# 		get :index
	# 	end

	# 	it "returns 4 records from the database" do
	# 		devices_response = json_response
	# 		expect(devices_response[:devices]).to have(4).items
	# 	end

	# 	it { should respond_with 200 }
	# end

	describe "POST #create" do
		context "when is successfully created" do
			before(:each) do
				@device_attributes = FactoryGirl.attributes_for :device 
				post :create, { device: @device_attributes }
			end

			it "renders the json representaion for the device just created" do
				device_response = json_response
				expect(device_response[:name]).to eql @device_attributes[:name]
			end

			it { should respond_with 201 }
		end

		context "when is not created" do
			before(:each) do
				@invalid_product_attributes = { name: "Not a Thing", model: "Not a Super"}
				post :create, { product: @invalid_product_attributes }
			end

			it "renders an errors json" do
				device_response = json_response
				expect(device_response). to have_key(:errors)
			end

			it "renders the json errors on why the device cannot be created" do
				device_response = json_response
				expect(device_response[:errors][:name]).to include "is not a name"
			end

			it { should respond_with 422 }
		end
	end

	# describe "PUT/PATCH #update" do
	# 	before(:each) do
	# 		@device = FactoryGirl.create :device 
	# 	end

	# 	context "when is successfully updated" do
	# 		before(:each) do
	# 			patch :update, { device: { name: "SuperJiffyTech"} }
	# 		end

	# 		it "renders the json representation for the updated device" do
	# 			device_response = json_response
	# 			expect(device_response[:name]).to eql "Non-Nutritive Crunch Enhancer"
	# 		end

	# 		it { should respond_with 200 }
	# 	end

	# 	context "when is not updated" do
	# 		before(:each) do
	# 			patch :update, { product: { model: "Clark W. Griswold" } }
	# 		end

	# 		it "renders an errors json" do
	# 			device_response = json_response
	# 			expect(device_response).to have_key(:errors)
	# 		end

	# 		it "renders the json errors why the device cannot be updated" do
	# 			device_response = json_response
	# 			expect(device_response[:errors][:model]).to include "is not a model"
	# 		end

	# 		it {  should respond_with 422 }

	# 	end
	# end

end
