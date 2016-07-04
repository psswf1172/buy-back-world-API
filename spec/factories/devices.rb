FactoryGirl.define do
  factory :device do
    name { FFaker::Product.product }
    model { FFaker::BaconIpsum.word }
    network { FFaker::Company.name }
    size { rand() }
    image { FFaker::Avatar.image}
  end
end