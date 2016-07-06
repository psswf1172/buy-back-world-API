class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :name, :model, :network, :size, :image, :price_cents
end
