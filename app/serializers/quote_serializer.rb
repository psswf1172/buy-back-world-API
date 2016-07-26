class QuoteSerializer < ActiveModel::Serializer
  attributes :name, :phone, :device, :model, :network, :size, :price, :condition
end
