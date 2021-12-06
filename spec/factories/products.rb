FactoryBot.define do
  factory :product do
    name { FFaker::Game.title }
    category { Product.categories.keys.sample }
    price { rand(500) }
  end
end
