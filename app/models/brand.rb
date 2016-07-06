class Brand < ActiveRecord::Base
	validates :brand_name

	has_many :devices
end
