class Device < ActiveRecord::Base
	validates :device_type, :device_model, :network, :network_image, :size, :image, :price_cents, presence: true
	
	belongs_to :brand

end
