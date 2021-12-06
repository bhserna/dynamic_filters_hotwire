100.times do
  Product.create(
    name: FFaker::Product.product_name,
    category: Product.categories.keys.sample,
    price: (100..500).to_a.sample
  )
end
