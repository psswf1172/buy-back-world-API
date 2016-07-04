class Offering < ActiveRecord::Base
	belongs_to :device
	validates :device_id, :condition, :price, presence: true
end