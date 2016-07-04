class Device < ActiveRecord::Base
	validates :name, :model, :network, :size, :image, presence: true
	
end