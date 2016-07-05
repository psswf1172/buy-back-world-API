class Device < ActiveRecord::Base
	validates :name, :model, :network, :size, :image, :price_cents, presence: true
	

end
