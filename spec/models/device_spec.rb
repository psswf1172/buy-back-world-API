require 'rails_helper'
require 'spec_helper'

describe Device do
	let(:device) { FactoryGirl.build :device }
	subject { device }

	it { should respond_to(:name) }
	it { should respond_to(:model) }
	it { should respond_to(:network) }
	it { should respond_to(:size) }
	it { should respond_to(:image) }

	it { should validate_presence_of :name }
	it { should validate_presence_of :model }
	it { should validate_presence_of :network }
	it { should validate_presence_of :size }
	it { should validate_presence_of :image }

end