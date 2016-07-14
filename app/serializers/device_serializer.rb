class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :device_type, :device_model, :network, :network_image, :size, :image, :price_cents
end
