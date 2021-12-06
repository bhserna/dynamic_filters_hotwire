require "system_helper"

RSpec.describe "User filters products" do
  scenario "defaults" do
    product1 = create :product
    product2 = create :product

    visit products_path

    expect(page).to display_product(product1)
    expect(page).to display_product(product2)
  end

  scenario "filter by category", js: true do
    product1 = create :product, category: "toys"
    product2 = create :product, category: "electronics"

    visit products_path

    select "toys", from: "Filter by category"

    expect(page).to display_product(product1)
    expect(page).not_to display_product(product2)
  end

  scenario "search", js: true do
    product1 = create :product, category: "toys"
    product2 = create :product, category: "electronics"

    visit products_path

    fill_in "Search", with: product1.name

    expect(page).to display_product(product1)
    expect(page).not_to display_product(product2)
  end

  def display_product(product)
    have_css "#product_#{product.id}"
  end
end
