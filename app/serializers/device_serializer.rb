class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :device_type, :device_model, :network, :size, :image, :price_cents
end
