class Device < ActiveRecord::Base
	validates :device_type, :model_name, :network, :size, :image, :price_cents, presence: true
	
	belongs_to :brand

	def condition
		if condition == 'broken with power'
			return quote = price_cents * .75
		elsif 
			condition == 'broken without power'
			return quote = price_cents * .25
		else
			return quote = price_cents
	end

end
